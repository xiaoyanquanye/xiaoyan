//
//  GongquanViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 14/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "GongquanViewController.h"
#import "HagongViewController.h"
#import "ChaigongViewController.h"

@interface GongquanViewController ()

@end

@implementation GongquanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"公犬";
    [self.view setBackgroundColor:[UIColor whiteColor]];

    UIButton *button=[[UIButton alloc]init];
    button.frame=CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width ,  ([UIScreen mainScreen].bounds.size.height-64)/2);
    button.backgroundColor=[UIColor yellowColor];
    [button setBackgroundImage:[UIImage imageNamed:@"66"] forState:UIControlStateNormal];//设置字体后矩形图片，     并控制正常状态
    
    [button addTarget:self action:@selector(hagong:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button];
   // 状态栏20，导航栏44
    UIButton *button1=[[UIButton alloc]init];
    button1.frame=CGRectMake(0,  ([UIScreen mainScreen].bounds.size.height/2)+32, [UIScreen mainScreen].bounds.size.width ,  ( [UIScreen mainScreen].bounds.size.height-64)/2);
    button1.backgroundColor=[UIColor redColor];
    [button1 setBackgroundImage:[UIImage imageNamed:@"67"] forState:UIControlStateNormal];//设置字体后矩形图片，                                                                                        并控制正常状态

      [button1 addTarget:self action:@selector(chaigong:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
//    UIImageView *image=[[UIImageView alloc]init];
//    image.frame=CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width ,  ([UIScreen mainScreen].bounds.size.height-64)/2);
//    image.image=[UIImage imageNamed:@"66"];
//    [self.view addSubview:image];
    
//    UIImageView *image1=[[UIImageView alloc]init];
//    image1.frame=CGRectMake(0,  ([UIScreen mainScreen].bounds.size.height/2)+32, [UIScreen mainScreen].bounds.size.width ,  ( [UIScreen mainScreen].bounds.size.height-64)/2);
//    image1.image=[UIImage imageNamed:@"67"];
//    [self.view addSubview:image1];


    
    // Do any additional setup after loading the view.
}


- (void)hagong:(UIButton *)sender//哈士奇公犬
{
    HagongViewController *hagong=[[HagongViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hagong setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:hagong  animated:YES];
}

- (void)chaigong:(UIButton *)sender//柴犬公犬
{
    ChaigongViewController *chaigong=[[ChaigongViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaigong setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:chaigong  animated:YES];
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
