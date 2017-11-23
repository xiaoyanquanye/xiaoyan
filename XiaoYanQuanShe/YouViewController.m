//
//  YouViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 25/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "YouViewController.h"
#import "YiViewController.h"
#import "ErViewController.h"
#import "SanViewController.h"
#import "Chai1ViewController.h"
#import "Chai2ViewController.h"
#import "Chai3ViewController.h"

@interface YouViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UIButton *button1;
    NSMutableArray *array1;
    NSMutableArray *array2;
    
    
    
}


@end

@implementation YouViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"幼犬出售";
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    NSArray *array=[NSArray arrayWithObjects:@"哈士奇", @"柴犬",nil];
    
    _stc=[[UISegmentedControl alloc] initWithItems:array];
    [_stc addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    
    //    [_stc addTarget:self action:@selector(fenlan:) forControlEvents:UIControlEventTouchDown];
    
    _stc.selectedSegmentIndex=0;
    
    _stc.frame=CGRectMake((self.view.frame.size.width)-330, 70, 300, 40);
    
    _stc.backgroundColor=[UIColor whiteColor];
    
    [self.view addSubview:_stc];
    
    [self.scroll=[UIScrollView alloc]initWithFrame:CGRectMake(0, 120, self.view.bounds.size.width,  self.view.bounds.size.height-120)];

    _tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 550) style:UITableViewStylePlain];
    _tableview.tag=1111;
    _tableview.dataSource=self;
    _tableview.delegate=self;
    
    _scroll.contentSize=CGSizeMake(_tableview.bounds.size.width*2, 0);
    
    _scroll.pagingEnabled=YES;
    [self.scroll addSubview:_tableview];
    
    [self.view addSubview:self.scroll];
    
    _tableview1=[[UITableView alloc]initWithFrame:CGRectMake(_tableview.bounds.size.width, 0, self.view.frame.size.width, self.scroll.frame.size.height) style:UITableViewStylePlain];
    _tableview1.dataSource=self;
    _tableview1.delegate=self;
    _tableview1.tag=2222;
    [self.scroll addSubview:_tableview1];

    
    // Do any additional setup after loading the view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//行数
    
    
    if (tableView.tag == 1111) {
        return 3;
    }
    
    return 2;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//行高
    
    return 300;
    
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString*identifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
     UIImageView *imageView = [[UIImageView alloc] init];
     UIImageView *imageView1 = [[UIImageView alloc] init];
    
    [cell addSubview:imageView1];
    [cell addSubview:imageView];
    if (tableView.tag==1111) {
        
        UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button3.frame=CGRectMake(0, 0, self.view.bounds.size.width, 300);//矩形大小（x轴，y轴，宽度，高度）
        button3.backgroundColor=[UIColor clearColor];//矩形颜色
        [tableView addSubview:button3];//通过父子视图显示出来
        button3.backgroundColor=[UIColor redColor];
        [button3 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        
        UIImageView *imageView1 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width/2, 300);
        imageView1.image=[UIImage imageNamed:@"90"];
        [tableView addSubview:imageView1];

        UIImageView *imageView = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(self.view.bounds.size.width/2, 0, self.view.bounds.size.width/2, 300);
        imageView.image=[UIImage imageNamed:@"228"];
        [tableView addSubview:imageView];
        
        UIImageView *imageView3 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView3.frame = CGRectMake(self.view.bounds.size.width/2-25, 50,50, 50);
        imageView3.image=[UIImage imageNamed:@"爱心"];
        [tableView addSubview:imageView3];

        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button.frame=CGRectMake(0, 300, self.view.bounds.size.width, 300);//矩形大小（x轴，y轴，宽度，高度）
        button.backgroundColor=[UIColor clearColor];//矩形颜色
        [tableView addSubview:button];//通过父子视图显示出来
        button.backgroundColor=[UIColor redColor];
        [button addTarget:self action:@selector(buttonClicke:) forControlEvents:UIControlEventTouchUpInside];
        
        UIImageView *imageView4 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView4.frame = CGRectMake(0, 300, self.view.bounds.size.width/2, 300);
        imageView4.image=[UIImage imageNamed:@"129"];
        [tableView addSubview:imageView4];
        
        UIImageView *imageView5 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView5.frame = CGRectMake(self.view.bounds.size.width/2, 300, self.view.bounds.size.width/2, 300);
        imageView5.image=[UIImage imageNamed:@"220"];
        [tableView addSubview:imageView5];
        
        UIImageView *imageView6 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView6.frame = CGRectMake(self.view.bounds.size.width/2-25, 350,50, 50);
        imageView6.image=[UIImage imageNamed:@"爱心"];
        [tableView addSubview:imageView6];

        UIButton *button4=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button4.frame=CGRectMake(0, 600, self.view.bounds.size.width, 300);//矩形大小（x轴，y轴，宽度，高度）
        button4.backgroundColor=[UIColor clearColor];//矩形颜色
        [tableView addSubview:button4];//通过父子视图显示出来
        [button4 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        UIImageView *imageView7 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView7.frame = CGRectMake(0, 600, self.view.bounds.size.width/2, 300);
        imageView7.image=[UIImage imageNamed:@"133"];
        [tableView addSubview:imageView7];
        
        UIImageView *imageView8 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView8.frame = CGRectMake(self.view.bounds.size.width/2, 600, self.view.bounds.size.width/2, 300);
        imageView8.image=[UIImage imageNamed:@"221"];
        [tableView addSubview:imageView8];
        
        UIImageView *imageView9 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView9.frame = CGRectMake(self.view.bounds.size.width/2-25, 650,50, 50);
        imageView9.image=[UIImage imageNamed:@"爱心"];
        [tableView addSubview:imageView9];

        
        

        
        
        
    }
    
    if (tableView.tag==2222) {
        UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button3.frame=CGRectMake(0, 0, self.view.bounds.size.width, 300);//矩形大小（x轴，y轴，宽度，高度）
        button3.backgroundColor=[UIColor clearColor];//矩形颜色
        [tableView addSubview:button3];//通过父子视图显示出来
        button3.backgroundColor=[UIColor redColor];
        [button3 addTarget:self action:@selector(buttonClic:) forControlEvents:UIControlEventTouchUpInside];
        
        UIImageView *imageView1 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width/2, 300);
        imageView1.image=[UIImage imageNamed:@"149"];
        [tableView addSubview:imageView1];
        
        UIImageView *imageView = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(self.view.bounds.size.width/2, 0, self.view.bounds.size.width/2, 300);
        imageView.image=[UIImage imageNamed:@"163"];
        [tableView addSubview:imageView];
        
        UIImageView *imageView3 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView3.frame = CGRectMake(self.view.bounds.size.width/2-25, 50,50, 50);
        imageView3.image=[UIImage imageNamed:@"爱心"];
        [tableView addSubview:imageView3];
        
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button.frame=CGRectMake(0, 300, self.view.bounds.size.width, 300);//矩形大小（x轴，y轴，宽度，高度）
        button.backgroundColor=[UIColor clearColor];//矩形颜色
        [tableView addSubview:button];//通过父子视图显示出来
        button.backgroundColor=[UIColor redColor];
        [button addTarget:self action:@selector(buttonCl:) forControlEvents:UIControlEventTouchUpInside];
        
        UIImageView *imageView4 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView4.frame = CGRectMake(0, 300, self.view.bounds.size.width/2, 300);
        imageView4.image=[UIImage imageNamed:@"142"];
        [tableView addSubview:imageView4];
        
        UIImageView *imageView5 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView5.frame = CGRectMake(self.view.bounds.size.width/2, 300, self.view.bounds.size.width/2, 300);
        imageView5.image=[UIImage imageNamed:@"172"];
        [tableView addSubview:imageView5];
        
        UIImageView *imageView6 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView6.frame = CGRectMake(self.view.bounds.size.width/2-25, 350,50, 50);
        imageView6.image=[UIImage imageNamed:@"爱心"];
        [tableView addSubview:imageView6];
        
//        UIButton *button4=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
//        button4.frame=CGRectMake(0, 600, self.view.bounds.size.width, 300);//矩形大小（x轴，y轴，宽度，高度）
//        button4.backgroundColor=[UIColor clearColor];//矩形颜色
//        [tableView addSubview:button4];//通过父子视图显示出来
//        [button4 addTarget:self action:@selector(buttonC:) forControlEvents:UIControlEventTouchUpInside];
//        
//        UIImageView *imageView7 = [[UIImageView alloc] init];
//        //         UIImageView *imageView = [[UIImageView alloc] init];
//        imageView7.frame = CGRectMake(0, 600, self.view.bounds.size.width/2, 300);
//        imageView7.image=[UIImage imageNamed:@"155"];
//        [tableView addSubview:imageView7];
//        
//        UIImageView *imageView8 = [[UIImageView alloc] init];
//        //         UIImageView *imageView = [[UIImageView alloc] init];
//        imageView8.frame = CGRectMake(self.view.bounds.size.width/2, 600, self.view.bounds.size.width/2, 300);
//        imageView8.image=[UIImage imageNamed:@"183"];
//        [tableView addSubview:imageView8];
//        
//        UIImageView *imageView9 = [[UIImageView alloc] init];
//        //         UIImageView *imageView = [[UIImageView alloc] init];
//        imageView9.frame = CGRectMake(self.view.bounds.size.width/2-25, 650,50, 50);
//        imageView9.image=[UIImage imageNamed:@"爱心"];
//        [tableView addSubview:imageView9];

    }
    
    return cell;
    
}
-(void)change:(UISegmentedControl *)sender{
    
    if (sender.selectedSegmentIndex == 0) {
        [_scroll setContentOffset:CGPointMake(0, 0) animated:YES];//设置内容偏移
        //        _scrollview.contentOffset=CGPointMake(0, 0);
    }else if (sender.selectedSegmentIndex == 1){
        [_scroll setContentOffset:CGPointMake(self.view.bounds.size.width, 0) animated:YES];//
    }
    
}

- (void)buttonClicked:(UIButton *)sender//
{
    YiViewController *yi=[[YiViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [yi setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:yi animated:YES];
    
    
}

- (void)buttonClicke:(UIButton *)sender//
{
    ErViewController *er=[[ErViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [er setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:er animated:YES];
    
    
}

- (void)buttonClick:(UIButton *)sender//
{
    SanViewController *san=[[SanViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [san setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:san animated:YES];
    
    
}

- (void)buttonClic:(UIButton *)sender//
{
    Chai1ViewController *chai1=[[Chai1ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chai1 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:chai1 animated:YES];
    
    
}

- (void)buttonCl:(UIButton *)sender//
{
    Chai2ViewController *chai2=[[Chai2ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chai2 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:chai2 animated:YES];
    
    
}

- (void)buttonC:(UIButton *)sender//
{
    Chai3ViewController *chai3=[[Chai3ViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [chai3 setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:chai3 animated:YES];
    
    
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
