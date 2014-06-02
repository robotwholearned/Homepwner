//
//  BNRAppDelegate.m
//  Homepwner
//
//  Created by Sandquist, Cassandra G on 5/27/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRAppDelegate.h"
#import "BNRItemsViewController.h"

@implementation BNRAppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    BNRItemsViewController* itemsViewController = [[BNRItemsViewController alloc] init];

    UINavigationController* navigationCOntroller = [[UINavigationController alloc] initWithRootViewController:itemsViewController];

    self.window.rootViewController = navigationCOntroller;

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
