//
//  AppDelegate.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 28/2/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "AppDelegate.h"

#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self.window =[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    [AMapServices sharedServices].apiKey = @"96ae1f9da51275274e0321148179e69b";
    
   // [self.window setRootViewController:[[OneViewController alloc]init]];
    
       UITabBarController *tabarcontroller=[[UITabBarController alloc]init];
    [tabarcontroller.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.window setRootViewController:tabarcontroller];

//    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(00, 00, 200, 200)];
//    view.backgroundColor=[UIColor redColor];//
//    [self.window addSubview:view];
//    
//    UIView *aview=[[UIView alloc]initWithFrame:CGRectMake(30, 30, 100, 100)];
//    aview.backgroundColor=[UIColor yellowColor];//
//    [self.window addSubview:aview];
//    
//    UIView *baview=[[UIView alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
//    baview.backgroundColor=[UIColor blueColor];
//    [self.window addSubview:baview];
    

//    [view.frame=CGRectMake(100, 100, 200, 200)];
//    [self.window addSubview:view];

    
    //    添加子控制区域对象
    OneViewController*oneView=[[OneViewController alloc]init] ;
    
    oneView.tabBarItem.title=@"首页";
    oneView.tabBarItem.image=[UIImage imageNamed:@"医院科室"];
    [oneView.view setBackgroundColor:[UIColor yellowColor]];
    oneView.tabBarItem.selectedImage=[UIImage imageNamed:@"医院科室"];
    
    UINavigationController*navigationController=[[UINavigationController alloc]initWithRootViewController:oneView];
    //
    TwoViewController*twoView=[[TwoViewController alloc]init];
    twoView.tabBarItem.title=@"定位";
    twoView.tabBarItem.image=[UIImage imageNamed:@"发送"];
    
    twoView.tabBarItem.selectedImage=[UIImage imageNamed:@"发送"];
    
    UINavigationController*navitwoController=[[UINavigationController alloc]initWithRootViewController:twoView];
    
    ThreeViewController*threeView=[[ThreeViewController alloc]init] ;
    
    threeView.tabBarItem.title=@"商城";
    threeView.tabBarItem.image=[UIImage imageNamed:@"交流绿"];
    
    threeView.tabBarItem.selectedImage=[UIImage imageNamed:@"交流绿"];
    
    UINavigationController*navithreeController=[[UINavigationController alloc]initWithRootViewController:threeView];
    
    
    FourViewController*fourView=[[FourViewController alloc]init] ;
    
    fourView.tabBarItem.title=@"我的";
    fourView.tabBarItem.image=[UIImage imageNamed:@"我的绿"];
    
    
    fourView.tabBarItem.selectedImage=[UIImage imageNamed:@"我的绿"];
    
    UINavigationController*navifourController=[[UINavigationController alloc]initWithRootViewController:fourView];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} forState:UIControlStateNormal];
    
    
    [tabarcontroller setViewControllers:@[navigationController,navitwoController,navithreeController,navifourController]];

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
