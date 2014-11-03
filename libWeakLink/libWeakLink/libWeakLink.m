//
//  libWeakLink.m
//  libWeakLink
//
//  Created by Alexander v. Below on 03.11.14.
//  Copyright (c) 2014 Alexander von Below. All rights reserved.
//

#import "libWeakLink.h"
#import <UIKit/UIKit.h>

@implementation libWeakLink
+ (BOOL) doThings {
    
    /*
     https://developer.apple.com/library/ios/documentation/DeveloperTools/Conceptual/cross_development/Using/using.html
     
     For iOS frameworks that support the NS_CLASS_AVAILABLE macro, conditionalize your code for weakly linked classes as demonstrated in the following example:
     
     if ([UIPrintInteractionController class]) {
     // Create an instance of the class and use it.
     } else {
     // Alternate code path to follow when the
     // class is not available.
     }
     */
    
    UIUserNotificationSettings * settings;
    if ([UIUserNotificationSettings class]) {
        settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeSound
                                                                              categories:nil];
    }
    return settings?YES:NO;
}
@end
