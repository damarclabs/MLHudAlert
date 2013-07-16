//
//  MLAppDelegate.m
//  MLHudAlertDemo
//
//  Created by Jason Lee on 13-7-16.
//  Copyright (c) 2013年 taobao. All rights reserved.
//

#import "MLAppDelegate.h"
#import "MLHudAlert.h"

@implementation MLAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)buttonDidClicked:(id)sender {
    NSButton *btn = sender;
    
    MLHudAlertType alertType ;
    NSString *message = @"";
    if ([btn.identifier isEqualToString:@"info"]) {
        alertType = MLHudAlertTypeInfo;
        message = @"You got 5 messages";
    }
    else if ([btn.identifier isEqualToString:@"warn"]) {
        alertType = MLHudAlertTypeWarn;
        message = @"Found 10 people has blocked you!";
    }
    else if ([btn.identifier isEqualToString:@"success"]) {
        alertType = MLHudAlertTypeSuccess;
        message = @"Friend has added success.";
    }
    else if ([btn.identifier isEqualToString:@"error"]) {
        alertType = MLHudAlertTypeError;
        message = @"Network disconneted.";
    }
    else {
        alertType = MLHudAlertTypeInfo;
    }
    
    [MLHudAlert alertWithWindow:self.window type:alertType message:message];
}

@end
