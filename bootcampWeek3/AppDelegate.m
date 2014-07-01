//
//  AppDelegate.m
//  bootcampWeek3
//
//  Created by Michael Sui on 6/26/14.
//  Copyright (c) 2014 Michael Austin Sui. All rights reserved.
//

#import "AppDelegate.h"

#import "LoginViewController.h"
#import "homeViewController.h"
#import "PeopleViewController.h"
#import "SettingsViewController.h"
#import "MessagesViewController.h"
#import "NotificationsViewController.h"



@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    
    LoginViewController *loginviewcontroller = [[LoginViewController alloc] init];
    
    
//  --------------
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
//  --------------
    
    homeViewController *homeviewcontroller = [[homeViewController alloc] init];
    
    UINavigationController *homeNavigationController = [[UINavigationController alloc] initWithRootViewController:homeviewcontroller];
    
    homeNavigationController.tabBarItem.title = @"Home";
    
//  --------------
    
    PeopleViewController *peopleViewController = [[PeopleViewController alloc] init];
    
    UINavigationController *peopleNavigationController = [[UINavigationController alloc] initWithRootViewController:peopleViewController];
    
    peopleNavigationController.tabBarItem.title = @"People";
    
//  --------------
    
    SettingsViewController *settingsViewController = [[SettingsViewController alloc] init];
    
    UINavigationController *settingsNavigationController = [[UINavigationController alloc] initWithRootViewController:settingsViewController];
    
    settingsNavigationController.tabBarItem.title = @"Settings";
    
//  --------------

    MessagesViewController *messagesViewController = [[MessagesViewController alloc] init];
    
    UINavigationController *messagesNavigationController = [[UINavigationController alloc] initWithRootViewController:messagesViewController];
    
    messagesNavigationController.tabBarItem.title = @"Messages";
    
//  --------------
    
    NotificationsViewController *notificationsViewController = [[NotificationsViewController alloc] init];
    
    UINavigationController *notificationsNavigationController = [[UINavigationController alloc] initWithRootViewController:notificationsViewController];
    
    notificationsNavigationController.tabBarItem.title = @"Notices";
    
//  --------------
    
    tabBarController.viewControllers = @[homeNavigationController, peopleNavigationController, settingsNavigationController, messagesNavigationController, notificationsViewController];
    
//  --------------
    
    self.window.rootViewController = loginviewcontroller;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
    
    
//-   (IBAction)onUpLoginButton:(id)sender {
//    UIViewController *vc = [[self.homeViewController alloc] init]]
//    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
//    [self presentViewController:vc animated:YES completion:nil]
//}
    
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
