//
//  ChongwuViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 26/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "ChongwuViewController.h"

@interface ChongwuViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *tableview;
    
}


@end

@implementation ChongwuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"商店";
    self.view.backgroundColor=[UIColor whiteColor];
    tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate=self;
    tableview.dataSource=self;
    
    
    [self.view addSubview:tableview];

    
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 7;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    
    
    return 400;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell*cell=[[UITableViewCell alloc]init];
    UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    
    UIImageView *imageView1 = [[UIImageView alloc] init];
    
    [tableView addSubview:imageView1];
    [tableView addSubview:headerLabel];
    if (indexPath.row==0) {
        
        headerLabel.frame=CGRectMake(20, 150, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
        
        headerLabel.text=@"售价：250¥";
        
        headerLabel.textColor=[UIColor redColor];
        
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
        headerLabel.backgroundColor=[UIColor clearColor];
        
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"380"];
        
        
        
        
    }
    
    if (indexPath.row==1) {
        
        headerLabel.frame=CGRectMake(20, 550, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
        
        headerLabel.text=@"售价：200¥";
        
        headerLabel.textColor=[UIColor redColor];
        
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
        headerLabel.backgroundColor=[UIColor clearColor];
        
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 400, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"381"];
        
        
        
        
    }
    
    if (indexPath.row==2) {
        
        headerLabel.frame=CGRectMake(20, 950, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
        
        headerLabel.text=@"售价：700¥";
        
        headerLabel.textColor=[UIColor redColor];
        
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
        headerLabel.backgroundColor=[UIColor clearColor];
        
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 800, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"382"];
        
        
        
        
    }
    
    if (indexPath.row==3) {
        
        headerLabel.frame=CGRectMake(20, 1350, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
        
        headerLabel.text=@"售价：300¥";
        
        headerLabel.textColor=[UIColor redColor];
        
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
        headerLabel.backgroundColor=[UIColor clearColor];
        
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 1200, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"383"];
        
        
        
        
    }
    if (indexPath.row==4) {
        
        headerLabel.frame=CGRectMake(20, 1750, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
        
        headerLabel.text=@"售价：100¥";
        
        headerLabel.textColor=[UIColor redColor];
        
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
        headerLabel.backgroundColor=[UIColor clearColor];
        
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 1600, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"384"];
        
        
        
        
    }
    
    if (indexPath.row==5) {
        
        headerLabel.frame=CGRectMake(20, 2150, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
        
        headerLabel.text=@"售价：400¥";
        
        headerLabel.textColor=[UIColor redColor];
        
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
        headerLabel.backgroundColor=[UIColor clearColor];
        
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 2000, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"385"];
        
        
        
        
    }
    
    
    
    if (indexPath.row==6) {
        
        headerLabel.frame=CGRectMake(20, 2550, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
        
        headerLabel.text=@"售价：50¥";
        
        headerLabel.textColor=[UIColor redColor];
        
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
        headerLabel.backgroundColor=[UIColor clearColor];
        
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 2400, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"386"];
        
        
        
        
    }
    
    
    
    
    
    
    
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
