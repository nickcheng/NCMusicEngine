//
//  AppDelegate.m
//  NCMusicEngine Example
//
//  Created by nickcheng on 13-1-23.
//  Copyright (c) 2013年 NC. All rights reserved.
//

#import "AppDelegate.h"
#import "NCMusicEngine.h"

@interface AppDelegate () <NCMusicEngineDelegate>
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  // Override point for customization after application launch.
  NCMusicEngine *player = [[NCMusicEngine alloc] init];
  player.delegate = self;
  [player playUrl:[NSURL URLWithString:@"http://zhangmenshiting.baidu.com/data2/music/3575713/3477433176400128.mp3?xcode=1d3cd5053652ea9b7e85deeab998d759"]]; // Music link is temporarily searched from internet just for demo. Please replace it with your own's.
  
  //
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
