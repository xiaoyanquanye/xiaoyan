//
//  MuquanViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 14/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "MuquanViewController.h"
#import "HamuViewController.h"
#import "ChaimuViewController.h"

@interface MuquanViewController ()

@end

@implementation MuquanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"母犬";
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *button=[[UIButton alloc]init];
    button.frame=CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width ,  ([UIScreen mainScreen].bounds.size.height-64)/2);
    button.backgroundColor=[UIColor yellowColor];
    [button setBackgroundImage:[UIImage imageNamed:@"16"] forState:UIControlStateNormal];//设置字体后矩形图片，     并控制正常状态
    
    [button addTarget:self action:@selector(hamu:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    // 状态栏20，导航栏44
    UIButton *button1=[[UIButton alloc]init];
    button1.frame=CGRectMake(0,  ([UIScreen mainScreen].bounds.size.height/2)+32, [UIScreen mainScreen].bounds.size.width ,  ( [UIScreen mainScreen].bounds.size.height-64)/2);
    button1.backgroundColor=[UIColor redColor];
    [button1 setBackgroundImage:[UIImage imageNamed:@"47"] forState:UIControlStateNormal];//设置字体后矩形图片，                                                                                        并控制正常状态
    
    [button1 addTarget:self action:@selector(chaimu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];


    // Do any additional setup after loading the view.
}

- (void)hamu:(UIButton *)sender//哈士奇母犬
{
    HamuViewController *hamu=[[HamuViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hamu setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:hamu  animated:YES];
}

- (void)chaimu:(UIButton *)sender//柴犬母犬
{
    ChaimuViewController *chaimu=[[ChaimuViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaimu setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:chaimu  animated:YES];
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
