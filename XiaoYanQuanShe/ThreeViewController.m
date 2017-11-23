//
//  ThreeViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 28/2/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "ThreeViewController.h"

#import "YouViewController.h"
#import "ChengViewController.h"
#import "XiaoViewController.h"
#import "ChongViewController.h"
#import "LingViewController.h"
#import "ChengquanViewController.h"
#import "HachaiViewController.h"
#import "ChongwuViewController.h"

@interface ThreeViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   

    self.title=@"商城";
     [self.view setBackgroundColor:[UIColor whiteColor]];
    
    
    UITableView *tableView=[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];//创建一个table
    self.navigationController.navigationBar.tintColor = [UIColor redColor];//改变返回按钮颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;//改变导航栏颜色
        tableView.dataSource=self;
    tableView.delegate=self;//6.设置两个协议，让控制器本身遵守这个协议
    [self.view addSubview:tableView];//5
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];//去掉多余的线条
    
      // Do any additional setup after loading the view.
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    
    return 200;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//行数
    if (section==0) return 1;
    return 1;
}



-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{//12.设置块的间距
    
    
    return 40;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{//10.设置块数
    
    return 5;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {//副标题
    
    
    
    if (0 == section) {
        return @"幼犬";
        
    }
    if (1 == section) {
        return @"成犬";
    }
    if (2 == section) {
        return @"哈柴优惠";
    }
    
    if (3 == section) {
        return @"宠物商店";
    }
    
    
    if (4 == section) {
        return @"领养哈柴";
    }
    
    
    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{//内容
    
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    
    if (indexPath.section==0) {
//        UITableViewCell *cell=[[UITableViewCell alloc]init];
        //        cell.imageView.image = [UIImage imageNamed:@"中老年男"];
        //
        UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button3.frame=CGRectMake(0, 0, 375, 200);//矩形大小（x轴，y轴，宽度，高度）
        button3.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button3];//通过父子视图显示出来
        [button3 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];

        
        UIImageView *imageView = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(0, 0,375, 200);
        imageView.image = [UIImage imageNamed:@"18"];
        
        [cell addSubview:imageView];
        
        
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button.frame=CGRectMake(0, 900, self.view.bounds.size.width, 300);//矩形大小（x轴，y轴，宽度，高度）
        button.backgroundColor=[UIColor clearColor];//矩形颜色
        button.tintColor=[UIColor redColor];
        [button setTitle:@"敬请期待！" forState:UIControlStateNormal];
        [tableView addSubview:button];//通过父子视图显示出来
        

        
        
        
        
        return cell;
    }
    
    if (indexPath.section==1) {
        
//        UITableViewCell *cell=[[UITableViewCell alloc]init];
        UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button3.frame=CGRectMake(0, 0, 375, 200);//矩形大小（x轴，y轴，宽度，高度）
        button3.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button3];//通过父子视图显示出来
        [button3 addTarget:self action:@selector(buttonClicke:) forControlEvents:UIControlEventTouchUpInside];
        

        
        
        UIImageView *imageView1 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 0,375, 200);
        imageView1.image = [UIImage imageNamed:@"15"];
        [cell addSubview:imageView1];
        
        
        
        return cell;
    }
    
    if (indexPath.section==2) {
        
//        UITableViewCell *cell=[[UITableViewCell alloc]init];
        
        UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button3.frame=CGRectMake(0, 0, 375, 200);//矩形大小（x轴，y轴，宽度，高度）
        button3.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button3];//通过父子视图显示出来
        [button3 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];

        UIImageView *imageView = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(0, 0,375, 200);
        imageView.image = [UIImage imageNamed:@"21"];
        [cell addSubview:imageView];
        
        return cell;
    }
    if (indexPath.section==3) {
//        UITableViewCell *cell=[[UITableViewCell alloc]init];
        UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button3.frame=CGRectMake(0, 0, 375, 200);//矩形大小（x轴，y轴，宽度，高度）
        button3.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button3];//通过父子视图显示出来
        [button3 addTarget:self action:@selector(buttonClic:) forControlEvents:UIControlEventTouchUpInside];

        
        UIImageView *imageView = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(0, 0,375, 200);
        imageView.image = [UIImage imageNamed:@"19"];
        [cell addSubview:imageView];
        
        
        
        
        
        return cell;
    }
    if (indexPath.section==4) {
        
//        UITableViewCell *cell=[[UITableViewCell alloc]init];
        UIImageView *imageView = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(0, 0,375, 200);
        imageView.image = [UIImage imageNamed:@"22"];
        [cell addSubview:imageView];
        
        
        return cell;
    }
//    if (indexPath.section==5) {
//        
//        UITableViewCell *cell=[[UITableViewCell alloc]init];
//        
//        return cell;
//    }
//    if (indexPath.section==6) {
//        
//        UITableViewCell *cell=[[UITableViewCell alloc]init];
//        
//        return cell;
//    }
    
        return cell;
}


- (void)buttonClicked:(UIButton *)sender//幼犬
{
    YouViewController *youquan=[[YouViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [youquan setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:youquan animated:YES];
    
    
}

- (void)buttonClicke:(UIButton *)sender//幼犬
{
    ChengquanViewController *chengquan=[[ChengquanViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chengquan setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:chengquan animated:YES];
    
    
}

- (void)buttonClick:(UIButton *)sender//幼犬
{
    HachaiViewController *hachai=[[HachaiViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [hachai setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:hachai animated:YES];
    
    
}

- (void)buttonClic:(UIButton *)sender//幼犬
{
    ChongwuViewController *chongwu=[[ChongwuViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chongwu setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:chongwu animated:YES];
    
    
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
