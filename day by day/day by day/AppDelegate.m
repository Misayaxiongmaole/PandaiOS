//
//  AppDelegate.m
//  day by day
//
//  Created by mac on 2019/8/29.
//  Copyright © 2019年 mac. All rights reserved.
//

#import "AppDelegate.h"

#import "PDHomeViewController.h"
#import "PDNewViewController.h"
#import "PDPublishViewController.h"
#import "PDGuanZhuViewController.h"
#import "PDMeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建Tabbar 、设置k窗口控制器
    UITabBarController *tabbarVC = [[UITabBarController alloc]init];
    self.window.rootViewController = tabbarVC;
    
    PDHomeViewController *pdhomeVC = [[PDHomeViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:pdhomeVC];
    
    [tabbarVC addChildViewController:nav];
    
    PDNewViewController *newVC = [[PDNewViewController alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:newVC];
    
    [tabbarVC addChildViewController:nav1];
    
    PDPublishViewController *publishVC = [[PDPublishViewController alloc]init];

    [tabbarVC addChildViewController:publishVC];
    
    PDGuanZhuViewController *guanzhuVC = [[PDGuanZhuViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:guanzhuVC];
    
    [tabbarVC addChildViewController:nav2];
    
    PDMeViewController *meVC = [[PDMeViewController alloc]init];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:meVC];
    
    [tabbarVC addChildViewController:nav3];
    
    //现实窗口
    [self.window makeKeyWindow];
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
