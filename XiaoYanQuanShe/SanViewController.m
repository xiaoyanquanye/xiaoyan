//
//  SanViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 25/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "SanViewController.h"

@interface SanViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *tableview;
    NSArray*Array;
    
}


@end

@implementation SanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"3";
    
    tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableview.delegate=self;
    tableview.dataSource=self;
    tableview.contentInset=UIEdgeInsetsMake(0, -15, 0, 0);
    
    [self.view addSubview:tableview];
    
    Array=[NSArray arrayWithObjects:[UIImage imageNamed:@"345"],[UIImage imageNamed:@"346"],[UIImage imageNamed:@"347"], [UIImage imageNamed:@"348"],[UIImage imageNamed:@"349"],[UIImage imageNamed:@"350"],[UIImage imageNamed:@"351"],[UIImage imageNamed:@"352"],[UIImage imageNamed:@"353"],[UIImage imageNamed:@"354"],[UIImage imageNamed:@"355"],[UIImage imageNamed:@"356"],[UIImage imageNamed:@"357"],[UIImage imageNamed:@"358"],[UIImage imageNamed:@"359"],nil];
    
    UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
    button3.frame=CGRectMake(200, 500, 200, 200);//矩形大小（x轴，y轴，宽度，高度）
    button3.backgroundColor=[UIColor clearColor];//矩形颜色
    
    [button3 setBackgroundImage:[UIImage imageNamed:@"329"] forState:UIControlStateNormal];//设置字体后矩形图片，                                                                                        并控制正常状态
    [self.view addSubview:button3];

    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view.
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    
    //if (indexPath.section==3) return 60;
    return 500;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//行数
    
    return 1;
    
}



-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{//12.设置块的间距
    if (section==0) return 100;
    
    return 5;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{//10.设置块数
    
    return 9;
    //    return 3;
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {//页头设计
    UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(0, -20,  [[UIScreen mainScreen] bounds].size.width/3,100)];
    
    if (section==0) {
        
        
        UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        headerLabel.frame=CGRectMake(20, 5, 230, 100);//(x轴,y轴，宽，高)
        
        //    label1.textColor=[UIColor blueColor];
        //  label1.textColor= [UIColor colorWithRed:242/255.0 green:117/255.0 blue:63/255.0 alpha:1];//主色调
        headerLabel.text=@"出生日期：2017年4月3日                    繁殖者: 天天                                 训练师：刘超                             所有权所在犬舍:潇岩犬舍  ";
        
        headerLabel.textColor=[UIColor blackColor];
        headerLabel.numberOfLines = 25;//表示label可以多行显示
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:15];
        headerLabel.backgroundColor=[UIColor clearColor];
        [customView addSubview:headerLabel];
        
    }
    return customView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString*identifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    cell.imageView.image=[Array objectAtIndex:indexPath.section];
    return cell;
    
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
