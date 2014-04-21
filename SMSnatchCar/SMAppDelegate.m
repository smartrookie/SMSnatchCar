//
//  SMAppDelegate.m
//  SMSnatchCar
//
//  Created by administrator on 14-4-21.
//  Copyright (c) 2014年 SM. All rights reserved.
//

#import "SMAppDelegate.h"
#import <IIViewDeckController.h>
#import "SMLeftViewController.h"
#import "SMCenterViewController.h"
#import "SMLeftViewController.h"

@implementation SMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    SMCenterViewController *center = [[SMCenterViewController alloc] init];
    SMLeftViewController *left = [[SMLeftViewController alloc] init];
    
    UINavigationController *navCenter = [[UINavigationController alloc] initWithRootViewController:center];
    UINavigationController *navLeft = [[UINavigationController alloc] initWithRootViewController:left];
    
    
    IIViewDeckController *viewDeck = [[IIViewDeckController alloc] initWithCenterViewController:navCenter leftViewController:navLeft];
    [viewDeck setLeftSize:160];
    [viewDeck setPanningCancelsTouchesInView:YES];
//    [viewDeck setPanningMode:IIViewDeckNoPanning];
    [viewDeck setCenterhiddenInteractivity:IIViewDeckCenterHiddenNotUserInteractiveWithTapToClose];
    
    
    [self.window setRootViewController:viewDeck];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
