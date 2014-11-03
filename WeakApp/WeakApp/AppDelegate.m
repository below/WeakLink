//
//  AppDelegate.m
//  WeakApp
//
//  Created by Alexander v. Below on 03.11.14.
//  Copyright (c) 2014 Alexander von Below. All rights reserved.
//

#import "AppDelegate.h"
#import "libWeakLink.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    BOOL test = [libWeakLink doThings];
    NSLog(@"Test was %d", test);
    return YES;
}
							
@end
