//
//  YouquanViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 14/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "YouquanViewController.h"
#import "HayouViewController.h"
#import "ChaiyouViewController.h"


@interface YouquanViewController ()

@end

@implementation YouquanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"幼犬";
    
    [self.view setBackgroundColor:[UIColor whiteColor]];

    
    UIButton *button=[[UIButton alloc]init];
    button.frame=CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width ,  ([UIScreen mainScreen].bounds.size.height-64)/2);
    button.backgroundColor=[UIColor yellowColor];
    [button setBackgroundImage:[UIImage imageNamed:@"280"] forState:UIControlStateNormal];//设置字体后矩形图片，     并控制正常状态
    
    [button addTarget:self action:@selector(hayou:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    // 状态栏20，导航栏44
    UIButton *button1=[[UIButton alloc]init];
    button1.frame=CGRectMake(0,  ([UIScreen mainScreen].bounds.size.height/2)+32, [UIScreen mainScreen].bounds.size.width ,  ( [UIScreen mainScreen].bounds.size.height-64)/2);
    button1.backgroundColor=[UIColor redColor];
    [button1 setBackgroundImage:[UIImage imageNamed:@"281"] forState:UIControlStateNormal];//设置字体后矩形图片，                                                                                        并控制正常状态
    
    [button1 addTarget:self action:@selector(chaiyou:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];

    // Do any additional setup after loading the view.
}

- (void)hayou:(UIButton *)sender//哈士奇幼犬
{
    HayouViewController *hayou=[[HayouViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hayou setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:hayou  animated:YES];
}

- (void)chaiyou:(UIButton *)sender//柴犬幼犬
{
    ChaiyouViewController *chaiyou=[[ChaiyouViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaiyou setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:chaiyou  animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
