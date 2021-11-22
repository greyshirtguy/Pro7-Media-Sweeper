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
    // Don't judge me too harshly for putting all the logic in this viewcontroller instead of a nice MVC. This is a pretty small "rough-and-ready" app!
    
    // TODO: Should we check if Pro7 is running - is there any chance of negative impact of opening/reading all library documents etc while Pro7 is open?
    
    // Create NSURL to point at Pro7 library folder (converting any invalid chars like & to std percent encoding used by URLs - just in case library folder contains such chars)
    NSURL *libraryFolderURL = [NSURL URLWithString:[[self.supportFilesTextField stringValue] stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.URLPathAllowedCharacterSet]];
    
    // NSMutableArray to store all found media file references
    NSMutableArray<NSURL *> *mutableFileURLs = [NSMutableArray array];
    
    // ********************
    // Enumerate the entire contents of library folder (and sub folders) and then read each .pro file to record all found references to media files (using simple REGEX matching)
    // ********************
    NSFileManager *localFileManager= [[NSFileManager alloc] init];
    NSDirectoryEnumerator *directoryEnumerator =
       [localFileManager enumeratorAtURL:libraryFolderURL
              includingPropertiesForKeys:@[NSURLNameKey]
                                 options:0
                            errorHandler:nil];
    
    for (NSURL *fileURL in directoryEnumerator) {
        if ([[[fileURL pathExtension] lowercaseString]  isEqual: @"pro"] ) {
            
            NSData *proFileData = [NSData dataWithContentsOfFile:[fileURL path]];
            NSString *proFileString = [[NSString alloc] initWithBytes:(char *)proFileData.bytes length:proFileData.length encoding:NSISOLatin1StringEncoding];
            
            //[proFileString containsString:[NSString stringWithFormat:@"%c%c", 0x1a,0x06]]
            
            // Add to list of found .pro files
            [mutableFileURLs addObject:fileURL];
        }
    }
    
    // TODO: remove this debug code
    NSLog(@"%lu", (unsigned long)[mutableFileURLs count]);
    
    
    //TODO:
    // ********************
    // Enumerate the entire contents of playlists folder  and then read each playlist file to record all found references to media files (using simple REGEX matching)
    // ********************
    
    
    // ********************
    // Scan media folder
    // ********************
    // Check if user has selected to include all subfolders and setup NSDirectoryEnumerationOptions to suit selection.
    NSDirectoryEnumerationOptions enumOptions = NSDirectoryEnumerationSkipsHiddenFiles;
    if (self.includeSubfoldersButton.state == NSControlStateValueOff)
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
