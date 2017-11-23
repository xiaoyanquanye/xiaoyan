//
//  ManhuaViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 14/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "ManhuaViewController.h"
#import "DazhanViewController.h"

@interface ManhuaViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *tableview;
    
}


@end

@implementation ManhuaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"小哈漫画";
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate=self;
    tableview.dataSource=self;
    
    
    [self.view addSubview:tableview];


    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    
    
    return 200;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell*cell=[[UITableViewCell alloc]init];
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];//去掉多余的线条

    UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
     UILabel * headerLabel1 = [[UILabel alloc] initWithFrame:CGRectZero];
    
     [cell addSubview:headerLabel1];
     [cell addSubview:headerLabel];
    if (indexPath.row==0) {
        
        UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button3.frame=CGRectMake(0, 0, 375, 200);//矩形大小（x轴，y轴，宽度，高度）
        button3.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button3];//通过父子视图显示出来
        [button3 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];

        headerLabel.frame=CGRectMake(20, 60, self.view.bounds.size.width, 200);//(x轴,y轴，宽，高)
        
        headerLabel.text=@"第一季";
        
        headerLabel.textColor=[UIColor redColor];
        
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
        headerLabel.backgroundColor=[UIColor clearColor];
        
        headerLabel1.frame=CGRectMake(130, -10, self.view.bounds.size.width, 200);//(x轴,y轴，宽，高)
        
        headerLabel1.text=@"哈柴大战";
        
        headerLabel1.textColor=[UIColor blackColor];
        
        headerLabel1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:30];
        headerLabel1.backgroundColor=[UIColor clearColor];

        
        
        
        
    }
    return cell;
}
- (void)buttonClicked:(UIButton *)sender//幼犬
{
    DazhanViewController *dazhan=[[DazhanViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [dazhan setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:dazhan animated:YES];
    
    
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
