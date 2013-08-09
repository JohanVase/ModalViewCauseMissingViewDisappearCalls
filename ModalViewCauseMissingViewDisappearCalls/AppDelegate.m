//
//  AppDelegate.m
//  Sandbox
//
//  Created by Johan Rugager Vase on 9/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"
#import "ModalViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    if ([self.window.rootViewController isKindOfClass:[UINavigationController class]]){
        [(UINavigationController *)self.window.rootViewController popToRootViewControllerAnimated:NO];
        //If I comment out the following line, VC2.viewWillDisappear and VC2.viewDidDisappear are called properly
        [self.window.rootViewController presentViewController:[[ModalViewController alloc] initWithNibName:@"ModalViewController" bundle:nil] animated:NO completion:nil];
    }
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
