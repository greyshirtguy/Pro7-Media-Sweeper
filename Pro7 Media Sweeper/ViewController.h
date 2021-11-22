//
//  ViewController.h
//  Pro7 Media Sweeper
//
//  Created by Dan on 22/11/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *mediaFolderTextField;
@property (weak) IBOutlet NSTextField *supportFilesTextField;
@property (weak) IBOutlet NSButton *includeSubfoldersButton;


@end

