//
//  LingyangViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 14/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "LingyangViewController.h"

@interface LingyangViewController ()

@end

@implementation LingyangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"分期购";
    
    self.view.backgroundColor=[UIColor whiteColor];
    
//    UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//    
//   
//   
//   
//        
//        headerLabel.frame=CGRectMake(20, 150, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
//        
//        headerLabel.text=@"售价：250¥";
//        
//        headerLabel.textColor=[UIColor redColor];
//        
//        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
//        headerLabel.backgroundColor=[UIColor clearColor];
// [self.view addSubview:headerLabel];
    
    UILabel *label1=[[UILabel alloc]init];
    label1.text=@"        其实对于每一个爱狗人士来说，每天都可以和狗狗面对面一起玩耍是一件特别棒的事，但是人嘛，总有一些资金周转不开的时候，这也是我们遇到的比较尴尬的事了，这个时候应该怎么办呢？不要着急，分期来帮您，分期可以让您不必负担那么大的压力，轻轻松松的把您喜欢的狗狗带回家，您只需先交第一个月的分期费就可以了，而且我们公司在您还款时间内，不需要您支付买犬之外的分期费，您可以根据您的实际经济状况选择分期的时长，快点联系我们吧！";
    label1.frame=CGRectMake(20, 70, 340, 600);//(x轴,y轴，宽，高)
    //    label1.textColor=[UIColor blueColor];
    //  label1.textColor= [UIColor colorWithRed:242/255.0 green:117/255.0 blue:63/255.0 alpha:1];//主色调
    label1.textColor=[UIColor blackColor];
    label1.numberOfLines = 25;//表示label可以多行显示
    label1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:19];
    label1.backgroundColor=[UIColor clearColor];
    //    self.view.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:label1];

    // Do any additional setup after loading the view.
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
