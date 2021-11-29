//
//  P7MSClickableTextField.m
//  Pro7 Media Sweeper
//
//  Created by Dan on 29/11/21.
//

#import "P7MSClickableTextField.h"

@implementation P7MSClickableTextField

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [self setAlphaValue:0.7];
}

- (void) mouseDown:(NSEvent *)event {
    [self sendAction:[self action] to:[self target]];
}

// Display link (pointing hand) when cursor hovers over this Text Field
- (void)resetCursorRects {
    [self addCursorRect:[self bounds] cursor:[NSCursor pointingHandCursor]];
}

@end
