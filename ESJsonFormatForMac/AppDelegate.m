//
//  AppDelegate.m
//  ESJsonFormatForMac
//
//  Created by ZX on 2017/5/12. 
//  Copyright © 2017年 ZX. All rights reserved.
//

#import "AppDelegate.h"
#import "ESInputJsonController.h"

@interface AppDelegate ()

//@property (nonatomic, strong)  NSWindow *mainWindow;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)hasVisibleWindows {
    if (!hasVisibleWindows) {
        for (NSWindow *window in sender.windows) {
            NSLog(@"%@",window);
            if ([window isMemberOfClass:NSWindow.class]) {
                [window makeKeyAndOrderFront:self];
                break;
            }
        }
    }
    return YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
