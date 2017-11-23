//
//  HamuViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 6/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "HamuViewController.h"
#import "Hamu1ViewController.h"
#import "Hamu2ViewController.h"
#import "Hamu3ViewController.h"
#import "Hamu4ViewController.h"
#import "Hamu5ViewController.h"
#import "Hamu6ViewController.h"

@interface HamuViewController ()

@end

@implementation HamuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"哈士奇母犬";
    [self.view setBackgroundColor:[UIColor whiteColor]];

    UIScrollView *scroll=[[UIScrollView alloc]init];//创建一个滚动视图，滚动视图是让视图内容进行滚屏查看功能
    
    scroll.frame=CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);//使用矩形定位滚动视图位置
    
    //是否按照整页来滚动视图
    scroll.pagingEnabled=YES;
    //是否开启滚动效果
    scroll.scrollEnabled=YES;
    //设置画布大小，就是这个滚动视图可以往后面滚多少次，一张图片的距离是一次
    scroll.contentSize=CGSizeMake(self.view.bounds.size.width*6, self.view.bounds.size.height-64);
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
    for (int i = 0; i<6; i++) {
        
        NSString *strName=[NSString stringWithFormat:@"%d",i+246];//创建一个名字
        
        UIImage *image=[UIImage imageNamed:strName];//让这六张图片都加载一遍
        
        UIImageView *iView=[[UIImageView alloc]initWithImage:image];
        
        //        iView.userInteractionEnabled = YES;
        //        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hagong1:)];
        //        [iView addGestureRecognizer:singleTap1];
        iView.frame=CGRectMake(self.view.bounds.size.width*i, 0,self.view.bounds.size.width, self.view.bounds.size.height);
        
        [scroll addSubview:iView];
        
        iView.tag=i;
        if (i==0) {
            NSLog(@"cvbcgnfgnn");
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hamu1:)];
            [iView addGestureRecognizer:singleTap1];
            
            
                 }else if(i==1){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hamu2:)];
            [iView addGestureRecognizer:singleTap2];
            
        }else if(i==2){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hamu3:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }else if(i==3){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hamu4:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }else if(i==4){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hamu5:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }else if(i==5){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hamu6:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }



        
    }
    
    [self.view addSubview:scroll];

    // Do any additional setup after loading the view.
}

- (void)hamu1:(id )sender//哈士奇母犬1贵妃
{
    Hamu1ViewController *hamu1=[[Hamu1ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hamu1 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:hamu1  animated:YES];
}

- (void)hamu2:(id )sender//哈士奇母犬2帅妃
{
    Hamu2ViewController *hamu2=[[Hamu2ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hamu2 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:hamu2  animated:YES];
}

- (void)hamu3:(id )sender//哈士奇母犬3倩妃
{
    Hamu3ViewController *hamu3=[[Hamu3ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hamu3 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:hamu3  animated:YES];
}


- (void)hamu4:(id )sender//哈士奇母犬3贤妃
{
    Hamu4ViewController *hamu4=[[Hamu4ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hamu4 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:hamu4  animated:YES];
}

//

- (void)hamu5:(id )sender//哈士奇母犬3淑妃
{
    Hamu5ViewController *hamu5=[[Hamu5ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hamu5 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:hamu5  animated:YES];
}

- (void)hamu6:(id )sender//哈士奇母犬3德妃
{
    Hamu6ViewController *hamu6=[[Hamu6ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hamu6 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:hamu6  animated:YES];
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
