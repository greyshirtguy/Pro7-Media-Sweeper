//
//  ViewController.h
//  Pro7 Media Sweeper
//
//  Created by Dan on 22/11/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *mediaFolderTextField;
@property (weak) IBOutlet NSTextField *sweptFilesFolderTextField;
@property (weak) IBOutlet NSButton *includeSubfoldersButton;
@property (weak) IBOutlet NSButton *sweepButton;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;
@property (weak) IBOutlet NSImageView *iconImageView;

@end

