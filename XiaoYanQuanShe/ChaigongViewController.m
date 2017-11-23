//
//  ChaigongViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 2/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "ChaigongViewController.h"
#import "Chaigong1ViewController.h"
#import "Chaigong2ViewController.h"
#import "Chaigong3ViewController.h"

@interface ChaigongViewController ()

@end

@implementation ChaigongViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"柴犬公犬";
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIScrollView *scroll=[[UIScrollView alloc]init];//创建一个滚动视图，滚动视图是让视图内容进行滚屏查看功能
    
    scroll.frame=CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);//使用矩形定位滚动视图位置
    
    //是否按照整页来滚动视图
    scroll.pagingEnabled=YES;
    //是否开启滚动效果
    scroll.scrollEnabled=YES;
    //设置画布大小，就是这个滚动视图可以往后面滚多少次，一张图片的距离是一次
    scroll.contentSize=CGSizeMake(self.view.bounds.size.width*3, self.view.bounds.size.height-64);
    //开启边缘弹动效果，就是四周可以拉开自动合住
    scroll.bounces=YES;
    //开启横向弹动效果
    scroll.alwaysBounceHorizontal=YES;
    //开启纵向弹动效果
    //    scroll.alwaysBounceVertical=YES;
    //显示横向滚动条
    scroll.showsHorizontalScrollIndicator=YES;
    //显示纵向滚动条
    //    scroll.showsVerticalScrollIndicator=YES;
    //设置背景颜色
    scroll.backgroundColor=[UIColor yellowColor];
    
    //使用循环创建6张图片视图
    for (int i = 0; i<3; i++) {
        
        NSString *strName=[NSString stringWithFormat:@"%d",i+47];//创建一个名字
        
        UIImage *image=[UIImage imageNamed:strName];//让这六张图片都加载一遍
        
        UIImageView *iView=[[UIImageView alloc]initWithImage:image];
        
       
        iView.frame=CGRectMake(self.view.bounds.size.width*i, 0,self.view.bounds.size.width, self.view.bounds.size.height);
        
        [scroll addSubview:iView];
        
        iView.tag=i;
        if (i==0) {
            NSLog(@"cvbcgnfgnn");
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaigong1:)];
            [iView addGestureRecognizer:singleTap1];
            
            
                }else if(i==1){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaigong2:)];
            [iView addGestureRecognizer:singleTap2];
            
        }else if(i==2){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaigong3:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }
        
    }
    
    [self.view addSubview:scroll];

    // Do any additional setup after loading the view.
}


- (void)chaigong1:(id )sender//柴犬公犬1
{
    Chaigong1ViewController *chaigong1=[[Chaigong1ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaigong1 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaigong1  animated:YES];
}

- (void)chaigong2:(id )sender//哈士奇公犬1
{
    Chaigong2ViewController *chaigong2=[[Chaigong2ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaigong2 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaigong2  animated:YES];
}

- (void)chaigong3:(id )sender//哈士奇公犬1
{
    Chaigong3ViewController *chaigong3=[[Chaigong3ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaigong3 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaigong3  animated:YES];
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