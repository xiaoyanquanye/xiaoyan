//
//  FenqigouViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 14/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "FenqigouViewController.h"

@interface FenqigouViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *tableview;
    
}


@end

@implementation FenqigouViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"设置";
    
    tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate=self;
    tableview.dataSource=self;
    
    
    [self.view addSubview:tableview];
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    
    
    return 50;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell*cell=[[UITableViewCell alloc]init];
    if (indexPath.row==0) {
        UILabel *label100=[[UILabel alloc]init];
        label100.text=@"账户与安全";
        label100.frame=CGRectMake(20, 0, 500, 50);//(x轴,y轴，宽，高)
        [tableview addSubview:label100];

    }
    if (indexPath.row==1) {
        UILabel *label100=[[UILabel alloc]init];
        label100.text=@"清除缓存";
        label100.frame=CGRectMake(20, 0, 500, 50);//(x轴,y轴，宽，高)
        [cell addSubview:label100];
        
    }
    
    if (indexPath.row==2) {
        UILabel *label100=[[UILabel alloc]init];
        label100.text=@"关于";
        label100.frame=CGRectMake(20, 0, 500, 50);//(x轴,y轴，宽，高)
        [cell addSubview:label100];
        
    }
    UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
    button3.frame=CGRectMake(140, 200, 100, 50);//矩形大小（x轴，y轴，宽度，高度）
    button3.backgroundColor=[UIColor redColor];//矩形颜色
    button3.tintColor=[UIColor whiteColor];
    [button3 setTitle:@"退出登录" forState:UIControlStateNormal];
    [tableView addSubview:button3];//通过父子视图显示出来
    


 tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];//去掉多余的线条
    cell.selectionStyle = UITableViewCellSelectionStyleNone;//点击它没反应

    
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
