//
//  FengcaiViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 14/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "FengcaiViewController.h"

@interface FengcaiViewController (){

    UIScrollView *scrollView;

}



@end

@implementation FengcaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"风采";
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
//    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 460)];
//    scrollView.backgroundColor = [UIColor greenColor];
//    //开启纵向弹动效果
//    scrollView.alwaysBounceVertical=NO;;
//    // 是否支持滑动最顶端
//       // scrollView.scrollsToTop = YES;
//    scrollView.delegate = self;
//    // 设置内容大小
//    scrollView.contentSize = CGSizeMake(scrollView.bounds.size.width*16, scrollView.bounds.size.height);
//    // 是否反弹
//        scrollView.bounces = NO;
//    
//    scrollView.contentOffset=(0,0);
//    // 是否分页
//        scrollView.pagingEnabled = YES;
//    // 是否滚动
//     //   scrollView.scrollEnabled = NO;
//    //    scrollView.showsHorizontalScrollIndicator = NO;
//    // 设置indicator风格
//    //    scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
//    // 设置内容的边缘和Indicators边缘
//    //    scrollView.contentInset = UIEdgeInsetsMake(0, 50, 50, 0);
//    //    scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 50, 0, 0);
//    // 提示用户,Indicators flash
////    [scrollView flashScrollIndicators];
//    // 是否同时运动,lock
//    scrollView.directionalLockEnabled = YES;
//    [self.view addSubview:scrollView];
    UIScrollView *scroll=[[UIScrollView alloc]init];//创建一个滚动视图，滚动视图是让视图内容进行滚屏查看功能
    
    scroll.frame=CGRectMake(0, 64, [[UIScreen mainScreen] bounds].size.width,  [[UIScreen mainScreen] bounds].size.height-250);//使用矩形定位滚动视图位置
    
    //是否按照整页来滚动视图
    scroll.pagingEnabled=YES;
    //是否开启滚动效果
    scroll.scrollEnabled=YES;
    //设置画布大小，就是这个滚动视图可以往后面滚多少次，一张图片的距离是一次
    scroll.contentSize=CGSizeMake([[UIScreen mainScreen] bounds].size.width*16,  [[UIScreen mainScreen] bounds].size.height-250);
    //开启边缘弹动效果，就是四周可以拉开自动合住
        scroll.bounces=NO;
    //开启横向弹动效果
    //    scroll.alwaysBounceHorizontal=YES;
    //开启纵向弹动效果
    //    scroll.alwaysBounceVertical=YES;
    //显示横向滚动条
    scroll.showsHorizontalScrollIndicator=YES;
    //显示纵向滚动条
    scroll.showsVerticalScrollIndicator=YES;
    //设置背景颜色
    scroll.backgroundColor=[UIColor yellowColor];
    
    //使用循环创建6张图片视图
    for (int i = 0; i<17; i++) {
        NSString *strName=[NSString stringWithFormat:@"%d.JPEG",i+282];//创建一个名字
        
        UIImage *image=[UIImage imageNamed:strName];//让这六张图片都加载一遍
        
        UIImageView *iView=[[UIImageView alloc]initWithImage:image];
        
        iView.frame=CGRectMake([[UIScreen mainScreen] bounds].size.width*i, 0, [[UIScreen mainScreen] bounds].size.width,  [[UIScreen mainScreen] bounds].size.height-250);
        
        [scroll addSubview:iView];

    
    UILabel *label=[[UILabel alloc]init];
    label.frame=CGRectMake(20, 530,350, 50);//(x轴,y轴，宽，高)
    label.textColor=[UIColor blackColor];
    //label.font = [UIFont systemFontOfSize:17];
     label.numberOfLines = 5;//表示label可以多行显示
    label.text=@"当你把一件自己喜欢干的事坚持下去";
    label.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
    label.backgroundColor=[UIColor clearColor];
        [self.view addSubview:label];
    
    UILabel *label1=[[UILabel alloc]init];
    label1.frame=CGRectMake(90, 600,350, 50);//(x轴,y轴，宽，高)
    label1.textColor=[UIColor blackColor];
    //label.font = [UIFont systemFontOfSize:17];
    label1.numberOfLines = 5;//表示label可以多行显示
    label1.text=@"你会发现处处春暖花开";
    label1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
    label1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:label1];

//    //使用循环创建6张图片视图
//    for (int i = 0; i<17; i++) {
//        
//        NSString *strName=[NSString stringWithFormat:@"%d",i+282];//创建一个名字
//        
//        UIImage *image=[UIImage imageNamed:strName];//让这六张图片都加载一遍
//        UIImageView *iView=[[UIImageView alloc]initWithImage:image];
//        
//        //        iView.userInteractionEnabled = YES;
//        //        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hagong1:)];
//        //        [iView addGestureRecognizer:singleTap1];
//        iView.frame=CGRectMake(self.view.bounds.size.width*i, 0,self.view.bounds.size.width, 460);
//
//        [scrollView addSubview:iView];
    
    }
    // Do any additional setup after loading the view.
     [self.view addSubview:scroll];
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
