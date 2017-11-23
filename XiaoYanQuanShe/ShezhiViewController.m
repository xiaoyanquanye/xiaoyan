//
//  ShezhiViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 14/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "ShezhiViewController.h"

@interface ShezhiViewController ()

@end

@implementation ShezhiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"设置";
    
    
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    UILabel *label100=[[UILabel alloc]init];
    label100.text=@"官方指定手机号：18234010193";
    label100.frame=CGRectMake(90, 300, 500, 50);//(x轴,y轴，宽，高)
    [self.view addSubview:label100];

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
