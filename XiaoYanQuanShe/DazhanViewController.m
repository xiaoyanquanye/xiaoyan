//
//  DazhanViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 26/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "DazhanViewController.h"

@interface DazhanViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *tableview;
    
}


@end

@implementation DazhanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"哈柴大战";
    self.view.backgroundColor=[UIColor whiteColor];
    
    tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate=self;
    tableview.dataSource=self;
    
    
    [self.view addSubview:tableview];

    // Do any additional setup after loading the view.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    
    
    return 400;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell*cell=[[UITableViewCell alloc]init];
      
    UIImageView *imageView1 = [[UIImageView alloc] init];
    
    [tableView addSubview:imageView1];
       if (indexPath.row==0) {
        
                //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"387"];
    }
    
    if (indexPath.row==1) {
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 400, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"388"];
    }

    if (indexPath.row==2) {
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 800, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"389"];
    }
    
    if (indexPath.row==3) {
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 1200, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"390"];
    }
    
    if (indexPath.row==4) {
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 1600, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"391"];
    }

    if (indexPath.row==5) {
        
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 200, self.view.bounds.size.width, 400);
        imageView1.image = [UIImage imageNamed:@"392"];
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
