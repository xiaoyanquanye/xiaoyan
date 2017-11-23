//
//  ChaimuViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 6/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "ChaimuViewController.h"
#import "Chaimu1ViewController.h"
#import "Chaimu2ViewController.h"
#import "Chaimu3ViewController.h"
#import "Chaimu4ViewController.h"
#import "Chaimu5ViewController.h"
#import "Chaimu6ViewController.h"



@interface ChaimuViewController ()

@end

@implementation ChaimuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"柴犬母犬";
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
        
        NSString *strName=[NSString stringWithFormat:@"%d",i+201];//创建一个名字
        
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
            UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaimu1:)];
            [iView addGestureRecognizer:singleTap1];
            
            
        }else if(i==1){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaimu2:)];
            [iView addGestureRecognizer:singleTap2];
            
        }else if(i==2){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaimu3:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }else if(i==3){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaimu4:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }else if(i==4){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaimu5:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }else if(i==5){
            
            iView.userInteractionEnabled = YES;
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(chaimu6:)];
            [iView addGestureRecognizer:singleTap3];
            
            
            
        }
        
        
        
        
    }
    
    [self.view addSubview:scroll];
    
    // Do any additional setup after loading the view.
}

- (void)chaimu1:(id )sender//柴犬母犬1吕雉
{
    Chaimu1ViewController *chaimu1=[[Chaimu1ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaimu1 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaimu1  animated:YES];
}

- (void)chaimu2:(id )sender//柴犬母犬2卫夫子
{
    Chaimu2ViewController *chaimu2=[[Chaimu2ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaimu2 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaimu2  animated:YES];
}

- (void)chaimu3:(id )sender//柴犬母犬3王昭君
{
    Chaimu3ViewController *chaimu3=[[Chaimu3ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaimu3 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaimu3  animated:YES];
}


- (void)chaimu4:(id )sender//柴犬母犬4武则天
{
    Chaimu4ViewController *chaimu4=[[Chaimu4ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaimu4 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaimu4  animated:YES];
}

//

- (void)chaimu5:(id )sender//柴犬母犬5叶赫那拉氏
{
    Chaimu5ViewController *chaimu5=[[Chaimu5ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaimu5 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaimu5  animated:YES];
}

- (void)chaimu6:(id )sender//柴犬母犬6婉容
{
    Chaimu6ViewController *chaimu6=[[Chaimu6ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chaimu6 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    NSLog(@"%@", self.navigationController);
    [self.navigationController pushViewController:chaimu6  animated:YES];
}

    // Do any additional setup after loading the view.


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
