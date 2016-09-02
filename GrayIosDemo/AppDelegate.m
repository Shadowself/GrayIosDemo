//
//  AppDelegate.m
//  GrayIosDemo
//
//  Created by shadow on 16/9/2.
//  Copyright © 2016年 shadow. All rights reserved.
//

#import "AppDelegate.h"
#import "BeginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
//    UITabBarController *tab = [[UITabBarController alloc] init];
//    tab.tabBar.tintColor = [UIColor redColor];
//    tab.tabBar.backgroundColor = [UIColor whiteColor];
//    
//    BeginViewController *vc = [BeginViewController new];
//    vc.title = @"BDViewController";
//    vc.tabBarItem.image = [UIImage imageNamed:@"tab_bd_normal"];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//    [nav.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
//    nav.navigationBar.shadowImage = [UIImage new];
//    UIColor *textColor = [UIColor redColor];
//    nav.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:textColor,NSFontAttributeName:[UIFont fontWithName:@"AppleGothic" size:20]};
//    [tab addChildViewController:nav];
//    
//    self.window.rootViewController = tab;
    
    // Override point for customization after application launch.
    //获取屏幕大小
    UIScreen *screen = [UIScreen mainScreen];
    //初始化窗口
    self.window = [[UIWindow alloc]initWithFrame:screen.bounds];
    //将视图1设置为初始视图
    BeginViewController *vc1 = [[BeginViewController alloc]init];
    //来个背景颜色区分一下
    vc1.view.backgroundColor = [UIColor blueColor];
    //实例化导航视图控制器并添加视图1进来
    UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc1];
    //将导航视图控制器设置为窗口根视图
    self.window.rootViewController = nc;
    //设置窗口可见
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
