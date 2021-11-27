//
//  ViewController.m
//  Pro7 Media Sweeper
//
//  Created by Dan on 22/11/21.
//

#import "ViewController.h"


@implementation ViewController

// These are set in viewDidLoad
NSURL *sweeperAppFolder;
NSURL *sweeperSweptMediaFolder;
NSURL *sweeperResultsFile;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Look up Pro7 preferences to find support files folder (which is called "applicationShowDirectory")
    NSUserDefaults* settings = [[NSUserDefaults alloc] initWithSuiteName:@"com.renewedvision.propresenter"];
    
    //TODO: consider notifying user of any error reading Pro7 prefs
    
    // Display support files folder (resolve any Tilde prefix if present, to show full path)
    [self.supportFilesTextField setStringValue:[[settings stringForKey:@"applicationShowDirectory"] stringByExpandingTildeInPath]];
    
    // Start with Pro7 default media folder for "Media Folder To Sweep" (resolve any Tilde prefix if present, to show full path)
    [self.mediaFolderTextField setStringValue:[[[settings stringForKey:@"applicationShowDirectory"] stringByExpandingTildeInPath] stringByAppendingString:@"/Media"]];
    
    // Update class variables that hold locations of folders to store swept files (and results file) - Created in User Home Folder
    NSFileManager *localFileManager= [[NSFileManager alloc] init];
    NSURL *userHomeFolder = [localFileManager homeDirectoryForCurrentUser];
    sweeperAppFolder = [userHomeFolder URLByAppendingPathComponent:@"Pro7 Media Sweeper"];
    sweeperSweptMediaFolder = [sweeperAppFolder URLByAppendingPathComponent:@"Swept Media Files"];
    sweeperResultsFile = [sweeperAppFolder URLByAppendingPathComponent:@"Sweeper Results.txt"];
}

- (void) viewDidAppear {
    // Setup "Pro7 Media Sweeper" Application folder if not found when view first appears (allows showing)
    NSFileManager *localFileManager= [[NSFileManager alloc] init];
    NSError *error = nil;
    if (![localFileManager fileExistsAtPath:[[sweeperAppFolder path] stringByExpandingTildeInPath]]) {
        [localFileManager createDirectoryAtURL:sweeperAppFolder withIntermediateDirectories:NO attributes:nil error:&error];
        if (error) {
            [self.sweepButton setEnabled:false];
            NSAlert *alert = [[NSAlert alloc] init];
            [alert setMessageText:@"Unable to create sweeper application folder"];
            [alert setInformativeText:[NSString stringWithFormat:@"Error: %@", [error description]]];
            [alert addButtonWithTitle:@"OK"];
            [alert beginSheetModalForWindow:self.view.window completionHandler:nil];
        } else {
            if (![localFileManager fileExistsAtPath:[[sweeperSweptMediaFolder path] stringByExpandingTildeInPath]]) {
                [localFileManager createDirectoryAtURL:sweeperSweptMediaFolder withIntermediateDirectories:NO attributes:nil error:&error];
                if (error) {
                    [self.sweepButton setEnabled:false];
                    NSAlert *alert = [[NSAlert alloc] init];
                    [alert setMessageText:@"Unable to create sweeper folder for swept media files"];
                    [alert setInformativeText:[NSString stringWithFormat:@"Error: %@", [error description]]];
                    [alert addButtonWithTitle:@"OK"];
                    [alert beginSheetModalForWindow:self.view.window completionHandler:nil];
                }
            }
        }
    }
}

- (IBAction)mediaFolderBrowseButtonClicked:(NSButton *)sender {
    // User has clicked on media folder browse button.
    // Create an NSOpenPanel to let user browse and select a media folder.
    NSOpenPanel *mediaDir = [NSOpenPanel openPanel];
    [mediaDir setAllowsMultipleSelection:NO];
    [mediaDir setCanChooseDirectories:YES];
    [mediaDir setCanChooseFiles:NO];
    [mediaDir setDirectoryURL:[NSURL fileURLWithPath:self.mediaFolderTextField.stringValue]]; // Start browsing at currently dispplayed media folder
    if ([mediaDir runModal] == NSModalResponseOK) {
        // If user clicks OK, then update UI with selected media folder
        [self.mediaFolderTextField setStringValue:[mediaDir.URL path]];
    }
}

- (IBAction)sweepButtonClicked:(NSButton *)sender {
    // TODO: Should we check if Pro7 is running - is there any chance of negative impact of opening/reading all library documents etc while Pro7 is open?
    
    // Create NSURL to point at Pro7 Support Folder (converting any invalid chars like & to std percent encoding used by URLs - just in case library folder contains such chars)
    NSURL *pro7SupportFolderURL = [NSURL URLWithString:[[self.supportFilesTextField stringValue] stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.URLPathAllowedCharacterSet]];
    
    // Create NSURL to point to selected Media Folder (Expand any ~ in the given path, and convert any invalid chars like & to std percent encoding used by URLs - just in case library folder contains such chars)
    NSURL *mediaFolderToScanURL = [NSURL URLWithString:[[[self.mediaFolderTextField stringValue] stringByExpandingTildeInPath] stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.URLPathAllowedCharacterSet]];
    
    // Create BOOL to represent inclusion of sub-folders in the scan.
    BOOL includeSubFolders = (self.includeSubfoldersButton.state == NSControlStateValueOn);
    
    // Update UI to show scanning has started
    [self.progressIndicator startAnimation:nil];
    
    // Disable scan button until this scan is completed
    [self.sweepButton setEnabled:false];
    
    // Call the sweep function on a background thread (to allow UI to animate/update during the sweep)
    // NB: This means that the sweep function must use dispatch_async(dispatch_get_main_queue() to Update UI (Sorry - destroying the MVC design pattern here - I know!)
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        // Create new results file
        NSFileManager *localFileManager= [[NSFileManager alloc] init];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [localFileManager createFileAtPath:[sweeperResultsFile path] contents:[[NSString  stringWithFormat: @"Pro7 Media Sweeper Results.\nMedia Sweep Started: %@\n", [dateFormatter stringFromDate:[NSDate date]]] dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
        
        // Call function to scan folders
        [self scanMediaFolder:mediaFolderToScanURL includingSubFolders:includeSubFolders forMediaNotUsedByPro7SupportFiles:pro7SupportFolderURL];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            // Update UI to show scanning has completed
            [self.progressIndicator stopAnimation:nil];
            
            // Re-enable scan button
            [self.sweepButton setEnabled:true];
            
            // Completion message/UI update - Done by opening the Sweep Results file and displaying content (which includes summary of results/errors)
            NSError *error;
            NSString *sweepResults = [NSString stringWithContentsOfFile:[sweeperResultsFile path] encoding:NSUTF8StringEncoding error:&error];
            
            NSAlert *alert = [[NSAlert alloc] init];
            [alert setMessageText:@"Scan Complete."];
            [alert setInformativeText:sweepResults];
            [alert addButtonWithTitle:@"OK"];
            [alert setAccessoryView:[[NSView alloc] initWithFrame:NSMakeRect(0, 0, 600, 0)]];
            [alert beginSheetModalForWindow:self.view.window completionHandler:nil];
            
            // TODO: Auto open swept files folder in Finder (maybe have button to manually open)??
        });
    });
}


- (void)scanMediaFolder:(NSURL *)mediaFolderToScanURL includingSubFolders:(BOOL)includeSubFolders forMediaNotUsedByPro7SupportFiles:(NSURL *)pro7SupportFolderURL {
    // ***************************************************************************************************************************************
    // ********** This function is called on a background thread - use dispatch_async(dispatch_get_main_queue() to Update UI *****************
    // ***************************************************************************************************************************************
        
    
    // **************************************************************************************
    // Build list of all references to media files from all library documents and playlists
    // **************************************************************************************
    
    // NSMutableArray to store all found media file references
    // Arlin's Windows version of Pro7 Sweeper uses two separate arrays (one for relative and one for absolute paths).
    // When searching, he searches the absolute paths array first.  If the majority of media file references are full/absolute paths, then Arlin's dual array strategy would perform better than this single array (something to keep in mind and check into if performance tuning is required)
    NSMutableArray<NSString *> *referencedMediaFiles = [NSMutableArray array];
    
    // Patterns to find paths referencing media files - These patterns work when representing the file data as NSStrings with any english encoding that uses ONE byte chars (This program will use NSISOLatin1StringEncoding)
    // TODO: Update to work with unicode filenames in any language.
    // For Pro7 files created on MacOS, absolute path starts with "file:///", then has any number of any chars followed by a . and then any number of alpha-numeric chars and is ended by two non-ascii chars (bytes 0x18 0x01).  (NB for later, it's also URL encoded with % escapes)
    // For Pro7 files created on Windows, absolute path starts with DriveLetter:\, then has any number of chars followed by a . and then any number of alpha-numeric chars and is ended by two non-ascii chars (bytes 0x18 0x02). (Note the last byte is 0x02 instead of 0x01)
    NSString *patternAbsoluteMediaPath = [NSString stringWithFormat:@"file:///.*\\.([0-9]|[a-z]|[A-Z])*(?=%c%c)", 0x18,0x01];
    
    // For Pro7 files created on MacOS, relative path starts with a non-ascii char (byte 0x12), then has any number of any chars followed by a . and then any number of alpha-numeric chars and is ended by two non-ascii chars (bytes 0x1a 0x06)
    // For Pro7 files created on Windows, the above pattern also matches relative paths! (Which is all you need to match - as only relative Windows paths could refer to media files on a MacOS file system)
    NSString *patternRelativeMediaPath = [NSString stringWithFormat:@"(?<=%c.).*\\.([0-9]|[a-z]|[A-Z])*(?=%c%c)", 0x12,0x1A,0x06];
    
    // Enumerate the entire contents of Libraries folder (and sub folders) and then read each .pro file and add all found references to referencedMediaFiles array (using simple REGEX matching)
    NSURL *librariesFolderURL = [pro7SupportFolderURL URLByAppendingPathComponent:@"Libraries"];
    [self recursivelyScanPro7FilesWithExtension:@"pro" inFolder:librariesFolderURL forReferencesToMediaFilesWithRegexPatterns:@[patternAbsoluteMediaPath,patternRelativeMediaPath] addingFoundReferencesToArray:referencedMediaFiles];
    
    // Enumerate the entire contents of Playlist folder (and sub folders) and then read each file and add all found references to referencedMediaFiles array (using simple REGEX matching)
    NSURL *playlistFolderURL = [pro7SupportFolderURL URLByAppendingPathComponent:@"PlayLists"];
    [self recursivelyScanPro7FilesWithExtension:nil inFolder:playlistFolderURL forReferencesToMediaFilesWithRegexPatterns:@[patternAbsoluteMediaPath,patternRelativeMediaPath] addingFoundReferencesToArray:referencedMediaFiles];
    
    // Enumerate the entire contents of Configuration folder (and sub folders) and then read each file and add all found references to referencedMediaFiles array (using simple REGEX matching)
    NSURL *configurationFolderURL = [pro7SupportFolderURL URLByAppendingPathComponent:@"Configuration"];
    [self recursivelyScanPro7FilesWithExtension:nil inFolder:configurationFolderURL forReferencesToMediaFilesWithRegexPatterns:@[patternAbsoluteMediaPath,patternRelativeMediaPath] addingFoundReferencesToArray:referencedMediaFiles];
    
    //Update results
    NSString *logUpdate = [NSString stringWithFormat:@"%lu media file references found in Pro7 files.\n", (unsigned long)[referencedMediaFiles count]];
    NSLog(@"%@", logUpdate);
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingToURL:sweeperResultsFile error:nil]; // TODO: Consider error handling
    [fileHandle seekToEndOfFile];
    [fileHandle writeData:[logUpdate dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle closeFile];
    
    // Debug logging to console
    for (NSString *filePath in referencedMediaFiles) {
        NSLog(@"%@", filePath);
    }
    
    // ********************
    // Scan media folder
    // ********************
    
    // Setup localFileManager and check selected media folder exists
    NSFileManager *localFileManager= [[NSFileManager alloc] init];
    if (![localFileManager fileExistsAtPath:[mediaFolderToScanURL path]]) {
        //Update results
        NSString *logUpdate = [NSString stringWithFormat:@"Could not find selected media folder %@.\n", [mediaFolderToScanURL path]];
        NSLog(@"%@", logUpdate);
        NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingToURL:sweeperResultsFile error:nil]; // TODO: Consider error handling
        [fileHandle seekToEndOfFile];
        [fileHandle writeData:[logUpdate dataUsingEncoding:NSUTF8StringEncoding]];
        [fileHandle closeFile];
        return;
    }
    
    // By default, let's scan *all* files - even hidden ones
    NSDirectoryEnumerationOptions enumOptions = 0;
    
    // Check if user has selected to include all subfolders and setup NSDirectoryEnumerationOptions to suit selection.
    if (!includeSubFolders)
        enumOptions = enumOptions | NSDirectoryEnumerationSkipsSubdirectoryDescendants;
    
    // Get enumerator ready to scan media folder
    NSDirectoryEnumerator *directoryEnumerator =
       [localFileManager enumeratorAtURL:mediaFolderToScanURL
              includingPropertiesForKeys:@[NSURLNameKey, NSURLIsDirectoryKey]
                                 options:enumOptions
                            errorHandler:nil];
    
    // Enumerate all files in selected Media folder and check if each one can be found in referencedMediaFiles array
    for (NSURL *mediaFileURL in directoryEnumerator) {
        
        // Skip directories (only check files)
        NSNumber *isDir;
        [mediaFileURL getResourceValue:&isDir forKey:NSURLIsDirectoryKey error:nil];
        if ([isDir boolValue])
            continue;
        
        // Find (index of) first item is array of referenced media files that matches the current media file.
        NSUInteger index = [referencedMediaFiles indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
            // Finding matches in the array is done by checking if the full path of the media file *contains* the media reference path stored in the array (this block searches the array items one by one)
            // This method of checking for a match works for both relative and absolute paths
            if ([[mediaFileURL path] containsString:(NSString *)obj]) {
                *stop = YES;
                return YES;
            }
            
            return NO;
        }];
        
        if (index == NSNotFound) {
            NSLog(@"NO: %@", [mediaFileURL path]);
            // TODO: Create destination folder (if not already exists)
            // TODO: Move Media file to destination folder
            // TODO: Increment Move Count
        } else {
            NSLog(@"YES: %@ - (%@)", [mediaFileURL path], referencedMediaFiles[index]);
        }
            
        
        
    }
    
    
    
    // TODO: Update SweepResults file with movecount.

}

- (void)recursivelyScanPro7FilesWithExtension:(NSString *)fileExtension inFolder:(NSURL *)folderToScan forReferencesToMediaFilesWithRegexPatterns:(NSArray<NSString *> *)regexPatternForMediaFileReferences addingFoundReferencesToArray: (NSMutableArray *)referencedMediaFiles {
    // ***************************************************************************************************************************************
    // ********** This function is called on a background thread - use dispatch_async(dispatch_get_main_queue() to Update UI *****************
    // ***************************************************************************************************************************************
    
    // Regular Expression
    NSRegularExpression *regex;
    
    NSFileManager *localFileManager= [[NSFileManager alloc] init];
    if (![localFileManager fileExistsAtPath:[folderToScan path]]) {
        //Update results
        NSString *logUpdate = [NSString stringWithFormat:@"Could not find folder %@.\n", [folderToScan path]];
        NSLog(@"%@", logUpdate);
        NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingToURL:sweeperResultsFile error:nil]; // TODO: Consider error handling
        [fileHandle seekToEndOfFile];
        [fileHandle writeData:[logUpdate dataUsingEncoding:NSUTF8StringEncoding]];
        [fileHandle closeFile];
        return;
    }
        
    NSDirectoryEnumerator *directoryEnumerator =
       [localFileManager enumeratorAtURL:folderToScan
              includingPropertiesForKeys:@[NSURLNameKey]
                                 options:0
                            errorHandler:nil];
    
    for (NSURL *fileURL in directoryEnumerator) {
        if (fileExtension == nil || [[[fileURL pathExtension] lowercaseString]  isEqual: fileExtension] ) {
            
            // Read file as plain data
            NSData *proFileData = [NSData dataWithContentsOfFile:[fileURL path]];
            
            // Create NSString from the data - This allows the unconventional use of REGEX to find patterns in the string form of the data. (Making sure to force a specific string encoding to an 8 bit encoding).
            NSString *proFileString = [[NSString alloc] initWithData:proFileData encoding:NSISOLatin1StringEncoding];
            
            //NSLog(@"Name: %@\n  Data Length:%lu\nString Length:%lu",[fileURL lastPathComponent],(unsigned long)[proFileData length],(unsigned long)[proFileString length]);
            
            // For debugging purposes - Log any mismatch of reading file as NSData vs NSString
            if ([proFileData length] != [proFileString length]) {
                NSLog(@"Warning: File data/string size mismatch");
            }
            
            for (NSString *regexPatternForMediaFileReference in regexPatternForMediaFileReferences) {
                regex = [NSRegularExpression regularExpressionWithPattern:regexPatternForMediaFileReference options:0 error:nil];
                
                // Grab all REGEX matches in an array "matches"
                NSArray *matches = [regex matchesInString:proFileString
                                                  options:0
                                                    range:NSMakeRange(0, [proFileString length])];

                // For each match, extract the matching text and add to list
                for (NSTextCheckingResult *match in matches) {
                    NSString *pathToMediaFile = [proFileString substringWithRange:[match range]];
                    
                    // Add to list of media files
                    if (pathToMediaFile) {
                        
                        // Sometimes (not often) I've noticed an extra non-ascii char at start of relative paths returned when using the current REGEX pattern.
                        // Ideally I would update the REGEX to remove it when it occurs - but I could not figure out how to create a REGEX for positive lookbehind that swallows optional chars...
                        // So I'll just nibble off any low-byte char if found at the start.
                        if ((int)[pathToMediaFile characterAtIndex:0] < 32)
                            pathToMediaFile = [pathToMediaFile substringFromIndex:1];
                        
                        [referencedMediaFiles addObject:pathToMediaFile];
                        //[referencedMediaFiles addObject:[pathToMediaFile stringByAppendingString:[fileURL path]]]; // Debugging option to capture filename
                    } else {
                        NSLog(@"Error extracting pathToMediaFile");
                    }
                }
            }
            
            
        }
    }
    NSString *logUpdate = [NSString stringWithFormat:@"%lu media file references found after scanning %@\n", (unsigned long)[referencedMediaFiles count], [folderToScan lastPathComponent]];
    NSLog(@"%@", logUpdate);
    
    /*
    dispatch_async(dispatch_get_main_queue(), ^{
        NSAlert *alert = [[NSAlert alloc] init];
        [alert setMessageText:[NSString stringWithFormat:@"%@ Scan Complete.", [folderToScan lastPathComponent]]];
        [alert setInformativeText:[NSString stringWithFormat:@"So far, found %lu references to media files.\nSee console output for list.", (unsigned long)[referencedMediaFiles count]]];
        [alert addButtonWithTitle:@"OK"];
        //[alert beginSheetModalForWindow:self.view.window completionHandler:nil];
    });
    */

}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
