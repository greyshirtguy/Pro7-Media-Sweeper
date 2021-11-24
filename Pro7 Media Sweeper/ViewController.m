//
//  ViewController.m
//  Pro7 Media Sweeper
//
//  Created by Dan on 22/11/21.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Look up Pro7 preferences to find support files folder (which is called "applicationShowDirectory")
    NSUserDefaults* settings = [[NSUserDefaults alloc] initWithSuiteName:@"com.renewedvision.propresenter"];
    
    //TODO: consider notifying user of any error reading Pro7 prefs
    
    // Display support files folder (resolve any Tilde prefix if present, to show full path)
    [self.supportFilesTextField setStringValue:[[settings stringForKey:@"applicationShowDirectory"] stringByExpandingTildeInPath]];
    
    
    // Start with Pro7 default media folder for "Media Folder To Sweep" (resolve any Tilde prefix if present, to show full path)
    [self.mediaFolderTextField setStringValue:[[[settings stringForKey:@"applicationShowDirectory"] stringByExpandingTildeInPath] stringByAppendingString:@"/Media"]];
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
    
    // Create NSURL to point to selected Media Folder (converting any invalid chars like & to std percent encoding used by URLs - just in case library folder contains such chars)
    NSURL *mediaFolderToScan = [NSURL URLWithString:[[self.mediaFolderTextField stringValue] stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.URLPathAllowedCharacterSet]];
    
    // Create BOOL to represent inclusion of sub-folders in the scan.
    BOOL includeSubFolders = (self.includeSubfoldersButton.state == NSControlStateValueOn);
    
    // Update UI to show scanning has started
    [self.progressIndicator startAnimation:nil];
    
    // Disable scan button until this scan is completed
    [self.sweepButton setEnabled:false];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        // Call function to scan folders in background
        [self scanMediaFolder:mediaFolderToScan includingSubFolders:includeSubFolders forMediaNotUsedByPro7SupportFiles:pro7SupportFolderURL];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            // Update UI to show scanning has completed
            [self.progressIndicator stopAnimation:nil];
            
            // Reenable scann button
            [self.sweepButton setEnabled:true];
        });
    });
}


- (void)scanMediaFolder:(NSURL *)mediaFolderToScanURL includingSubFolders:(BOOL)includeSubFolders forMediaNotUsedByPro7SupportFiles:(NSURL *)pro7SupportFolderURL {
    // ***************************************************************************************************************************************
    // ********** This function is called on a background thread - use dispatch_async(dispatch_get_main_queue() to Update UI *****************
    // ***************************************************************************************************************************************
    
    // NSMutableArray to store all found media file references
    NSMutableArray<NSURL *> *mediaFileURLs = [NSMutableArray array];
    
    NSLog(@"%@",pro7SupportFolderURL);
    
    // ********************
    // Enumerate the entire contents of Libraries folder (and sub folders) and then read each .pro file to record all found references to media files (using simple REGEX matching)
    // ********************
    NSFileManager *localFileManager= [[NSFileManager alloc] init];
    
    NSURL *librariesFolderURL = [pro7SupportFolderURL URLByAppendingPathComponent:@"Libraries"];
    
    NSDirectoryEnumerator *directoryEnumerator =
       [localFileManager enumeratorAtURL:librariesFolderURL
              includingPropertiesForKeys:@[NSURLNameKey]
                                 options:0
                            errorHandler:nil];
    
    for (NSURL *fileURL in directoryEnumerator) {
        if ([[[fileURL pathExtension] lowercaseString]  isEqual: @"pro"] ) {
            
            // Read file as plain data
            NSData *proFileData = [NSData dataWithContentsOfFile:[fileURL path]];
            
            // Create NSString from the data - This allows the unconventional use of REGEX to find patterns in the string form of the data. (Making sure to force a specific string encoding to an 8 bit encoding).
            //NSString *proFileString = [[NSString alloc] initWithBytes:(char *)proFileData.bytes length:proFileData.length encoding:NSISOLatin1StringEncoding];
            NSString *proFileString = [[NSString alloc] initWithData:proFileData encoding:NSISOLatin1StringEncoding];
            
            NSLog(@"Name: %@\n  Data Length:%lu\nString Length:%lu",[fileURL lastPathComponent],(unsigned long)[proFileData length],(unsigned long)[proFileString length]);
            
            // For debugging purposes - Log any mismatch of reading file as NSData vs NSString
            if ([proFileData length] != [proFileString length]) {
                NSLog(@"Warning: File data/string size mismatch");
            }
            
            //[proFileString containsString:[NSString stringWithFormat:@"%c%c", 0x1a,0x06]]
            
            // Patterns to find paths to media files
            NSString *pattern = [NSString stringWithFormat:@"file:///.*(?=%c%c)", 0x18,0x01]; // Absolute path starts with "file:///" and ends with \^X \^A (0x18 0x01).  It's also URL encoded (%20 for space etc)
            // Relative path ends with \^Z \^F = 0x1a 0x06  //TODO: determine starting chars/bytes
            
            // Setup REGEX
            NSError *error = nil;
            NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:0 error:&error];
            
            // Count matches
            NSUInteger numberOfMatches = [regex numberOfMatchesInString:proFileString
                                                                options:0
                                                                  range:NSMakeRange(0, [proFileString length])];
            NSLog(@"Found %lu media items", (unsigned long)numberOfMatches);
            
            // Grab all REGEX matches in an array
            NSArray *matches = [regex matchesInString:proFileString
                                              options:0
                                                range:NSMakeRange(0, [proFileString length])];

            // For each match, create a URL object and add to list of
            for (NSTextCheckingResult *match in matches) {
                NSString *absolutePathToMediaFile = [proFileString substringWithRange:[match range]];
                //NSLog(@"%@", absolutePathToMediaFile);
                
                // Add to list of media files(as a URL)
                NSURL *mediaFileURL = [NSURL URLWithString:absolutePathToMediaFile];
                if (mediaFileURL) {
                    [mediaFileURLs addObject:mediaFileURL];
                } else {
                    NSLog(@"Error converting %@ to URL", absolutePathToMediaFile);
                }
            }
            
            
        }
    }
    
    NSLog(@"%@", mediaFileURLs);
    
    // TODO: remove this debug code
    NSLog(@"%lu media files found.", (unsigned long)[mediaFileURLs count]);
    dispatch_async(dispatch_get_main_queue(), ^{
        NSAlert *alert = [[NSAlert alloc] init];
        [alert setMessageText:@"Library Scan Complete."];
        [alert setInformativeText:[NSString stringWithFormat:@"Found %lu references to media files.", (unsigned long)[mediaFileURLs count]]];
        [alert addButtonWithTitle:@"OK"];
        [alert beginSheetModalForWindow:self.view.window completionHandler:nil];
    });
    
    
    //TODO:
    // ********************
    // Enumerate the entire contents of playlists folder  and then read each playlist file to record all found references to media files (using simple REGEX matching)
    // ********************
    
    
    // ********************
    // Scan media folder
    // ********************
    // Check if user has selected to include all subfolders and setup NSDirectoryEnumerationOptions to suit selection.
    NSDirectoryEnumerationOptions enumOptions = NSDirectoryEnumerationSkipsHiddenFiles;
    if (!includeSubFolders)
        enumOptions = enumOptions | NSDirectoryEnumerationSkipsSubdirectoryDescendants;
    
    // TODO: check if user has entered ~/ prefix manually and resolve if so...
    
    // TODO: Enumerate the entire contents of selected Media folder (and sub folders if user chose) - moving each file out (to swept files folder) if not referenced
    
    // TODO: Completion message/UI update (show any errors)
    
    // TODO: Auto open swept files folder in Finder (maybe have button to manually open)??
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
