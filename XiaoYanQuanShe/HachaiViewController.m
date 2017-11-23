//
//  HachaiViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 26/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "HachaiViewController.h"

@interface HachaiViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *tableview;
    
}


@end

@implementation HachaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"优惠";
    self.view.backgroundColor=[UIColor whiteColor];
    
    tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate=self;
    tableview.dataSource=self;
    
    
    [self.view addSubview:tableview];
   
    
    // Do any additional setup after loading the view.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 2;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    
    
    return 400;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell*cell=[[UITableViewCell alloc]init];
    UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    headerLabel.frame=CGRectMake(20, 150, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
    
    headerLabel.text=@"售价：2000";
    
    headerLabel.textColor=[UIColor redColor];
    
    headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
    headerLabel.backgroundColor=[UIColor clearColor];

    UIImageView *imageView1 = [[UIImageView alloc] init];
    imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width, 400);
    imageView1.image = [UIImage imageNamed:@"364"];
    [tableView addSubview:imageView1];
    [tableView addSubview:headerLabel];
    
    UILabel * headerLabel1 = [[UILabel alloc] initWithFrame:CGRectZero];
    headerLabel1.frame=CGRectMake(20, 550, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
    
    headerLabel1.text=@"售价：3000";
    
    headerLabel1.textColor=[UIColor redColor];
    
    headerLabel1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
    headerLabel1.backgroundColor=[UIColor clearColor];
   

    UIImageView *imageView2 = [[UIImageView alloc] init];
    imageView2.frame = CGRectMake(0, 400, self.view.bounds.size.width, 400);
    imageView2.image = [UIImage imageNamed:@"354"];
    [tableView addSubview:imageView2];
     [tableView addSubview:headerLabel1];

    
//    if (indexPath.row==0) {
//        
//        
//        
//        //         UIImageView *imageView = [[UIImageView alloc] init];
//       
//        
//        
//        
//        
//    }
//    
//    if (indexPath.row==1) {
//        
//        headerLabel.frame=CGRectMake(20, 550, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
//        
//        headerLabel.text=@"售价：6000";
//        
//        headerLabel.textColor=[UIColor redColor];
//        
//        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
//        headerLabel.backgroundColor=[UIColor clearColor];
//        
//        
//        //         UIImageView *imageView = [[UIImageView alloc] init];
//        imageView1.frame = CGRectMake(0, 400, self.view.bounds.size.width, 400);
//        imageView1.image = [UIImage imageNamed:@"374"];
//        
//        
//        
//        
//    }

    
    
    
    
    
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
