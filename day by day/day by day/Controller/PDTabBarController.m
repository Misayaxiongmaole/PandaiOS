//
//  PDTabBarController.m
//  day by day
//
//  Created by mac on 2019/8/29.
//  Copyright © 2019年 mac. All rights reserved.
//

#import "PDTabBarController.h"
#import "PDHomeViewController.h"
#import "PDNewViewController.h"
#import "PDPublishViewController.h"
#import "PDGuanZhuViewController.h"
#import "PDMeViewController.h"
#import "UIImage+PDImage.h"
#import "PDTabBar.h"

@interface PDTabBarController ()

@end

@implementation PDTabBarController

+(void)load{
    //appearance 获取整个应用程序下的所有UITabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
//    UITabBarItem *item = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:self];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[NSForegroundColorAttributeName] = [UIColor blackColor];
    dic[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [item setTitleTextAttributes:dic forState:UIControlStateSelected];
    
    //设置字体大小只有在正常情况下才有效
    NSMutableDictionary *dicNor = [NSMutableDictionary dictionary];
    dicNor[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:dicNor forState:UIControlStateNormal];
}
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    NSLog(@"%@",self.tabBar.subviews);
   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self SetupAllChildController];
    [self setupAllTitleButton];
    
    [self setUpTabBar];
}

-(void)SetupAllChildController{
    
    PDHomeViewController *pdhomeVC = [[PDHomeViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:pdhomeVC];
    
    [self addChildViewController:nav];
    
    
    PDNewViewController *newVC = [[PDNewViewController alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:newVC];
    
    [self addChildViewController:nav1];
    
    PDPublishViewController *publishVC = [[PDPublishViewController alloc]init];
    
    [self addChildViewController:publishVC];
    
    PDGuanZhuViewController *guanzhuVC = [[PDGuanZhuViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:guanzhuVC];
    
    [self addChildViewController:nav2];
    
    PDMeViewController *meVC = [[PDMeViewController alloc]init];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:meVC];
    
    [self addChildViewController:nav3];
}

-(void)setupAllTitleButton{
    
    UINavigationController *nav = self.childViewControllers[0];
    nav.tabBarItem.title =@"项目";
    nav.tabBarItem.image = [UIImage imageNamed:@"wxm"];
    //设置Tabbar上面不要渲染的图片，默认会被渲染
    nav.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"xm"];
    
    
    
    UINavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title =@"购票";
    nav1.tabBarItem.image = [UIImage imageNamed:@"wgp"];
    nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"gp"];
    
    UINavigationController *nav2 = self.childViewControllers[2];
    nav2.tabBarItem.title =@"消息";
    nav2.tabBarItem.image = [UIImage imageNamed:@"wxx"];
    nav2.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"xx"];
    
    UINavigationController *nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title =@"我的";
    nav3.tabBarItem.image = [UIImage imageNamed:@"wwd"];
    nav3.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"wd"];
}

-(void)setUpTabBar{
    
    PDTabBar *tabBar = [[PDTabBar alloc]init];
//    self.tabBar = tabBar;
    [self setValue:tabBar forKeyPath:@"tabBar"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
