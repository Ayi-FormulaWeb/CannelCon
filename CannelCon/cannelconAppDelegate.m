//
//  cannelconAppDelegate.m
//  CannelCon
//
//  Created by 陳 駿逸 on 12/9/7.
//  Copyright (c) 2012年 陳 駿逸. All rights reserved.
//

#import "cannelconAppDelegate.h"

@implementation cannelconAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // ****************************************************************************
    // Fill in with your Parse, Facebook and Twitter credentials:
    // 填Parse Facebook Twitter資料。
    // ****************************************************************************
    
    [Parse setApplicationId:@"cPnOWewm82iDcU4D4h6JURH9NYbeA1nEURjuZvjp"
                  clientKey:@"1GWawiHqcfdPV4U3dQewZdJCYdcI0bNyRgVrmQTV"];
    [PFFacebookUtils initializeWithApplicationId:@"395584980507693"];
    [PFTwitterUtils initializeWithConsumerKey:@"U9e4zsIGohHWeTs9fsHzA" consumerSecret:@"e46qkwSuyHSkOjsdagDYMGa4v3DptaazUAiTKw8hY0"];
    
    
    // Set defualt ACLs
    PFACL *defaultACL = [PFACL ACL];
    [defaultACL setPublicReadAccess:YES];
    [PFACL setDefaultACL:defaultACL withAccessForCurrentUser:YES];
    
//    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[DemoTableViewController alloc] init]];
//    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    return YES;
}

////////////////////
//Facebook的登入委託
////////////////////
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    return [PFFacebookUtils handleOpenURL:url];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [PFFacebookUtils handleOpenURL:url];
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
