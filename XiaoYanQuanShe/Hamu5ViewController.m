//
//  Hamu5ViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 6/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "Hamu5ViewController.h"

@interface Hamu5ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *_tableview;
    
}



@end

@implementation Hamu5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"淑妃";
    [self.view setBackgroundColor:[UIColor whiteColor]];

    _tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableview.delegate=self;
    _tableview.dataSource=self;
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    [self.view addSubview:_tableview];

    // Do any additional setup after loading the view.
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{//页头高度,块的间距
    
    if (section==0) {
        return 160;
    }
    return 0;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {//页头设计
    UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(0, -20,  [[UIScreen mainScreen] bounds].size.width/3,200)];
    
    if (section==0) {
        
        
        UIImageView *bg = [[UIImageView alloc]initWithFrame:customView.frame];
        bg.image = [UIImage imageNamed:@"100"];
        [customView addSubview:bg];
        
        UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        headerLabel.frame=CGRectMake(( [[UIScreen mainScreen] bounds].size.width/3)+15, 5, 230, 160);//(x轴,y轴，宽，高)
        
        //    label1.textColor=[UIColor blueColor];
        //  label1.textColor= [UIColor colorWithRed:242/255.0 green:117/255.0 blue:63/255.0 alpha:1];//主色调
        headerLabel.text=@"出生日期：2015年8月3日           AKC注册号: ZG52077581            CKU注册号：CKU-270318110/77          繁殖者: 日天                                 训练师：日地                             所有权所在犬舍:潇岩犬舍  ";
        
        headerLabel.textColor=[UIColor blackColor];
        headerLabel.numberOfLines = 25;//表示label可以多行显示
        headerLabel.font = [UIFont fontWithName:@"Bangla Sangam MN" size:15];
        headerLabel.backgroundColor=[UIColor clearColor];
        [customView addSubview:headerLabel];
        
    }
    return customView;
}



//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{//页尾
//
//return @"再见";
//
//}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{//页尾距离最后一行高度
    
    if (section==5) {
        return 200;
    }
    return 0;
    
}



- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    
    UIView* customView = [[UIView alloc] init];
    if (section==5) {
        
        
        UILabel * lable = [[UILabel alloc] initWithFrame:CGRectZero];
        lable.frame=CGRectMake(5, 0,[[UIScreen mainScreen] bounds].size.width , 200);//(x轴,y轴，宽，高)
        
        lable.text=@"血统信息：                                                                    父亲：泰勒,中国2008年度登陆冠军，AKC注册号:  WS41143303                                                                        母亲：玛丽，中国第一批从俄罗斯引进的种犬，AKC注册号:  WS41143311                                                                         爷爷：乔布斯，美国2000年度登陆亚军，AKC注册号:  MG71145867                                                                      奶奶：丹尼尔，美国2011年度登陆冠军，AKC注册号:  MG73145827 ";
        
        lable.textColor=[UIColor blackColor];
        lable.numberOfLines = 25;//表示label可以多行显示
        lable.font = [UIFont fontWithName:@"Bangla Sangam MN" size:15];
        lable.backgroundColor=[UIColor clearColor];
        [customView addSubview:lable];
        
    }
    
    return customView;
    
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//块行数
    
    return 1;
    
    
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//.块的高度
    return 300;
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{//设置块数
    
    return 6;
    //    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier=@"cell";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell==nil){
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    if (indexPath.section==0) {
        
        
        UIImageView *image1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 160, 375, 300)];
        image1.image=[UIImage imageNamed:@"233"];
        [_tableview addSubview:image1];
        
    }
    
    if (indexPath.section==1) {
        
        
        UIImageView *image2=[[UIImageView alloc]initWithFrame:CGRectMake(0, 495, 375, 300)];
        image2.image=[UIImage imageNamed:@"234"];
        [_tableview addSubview:image2];
        
    }
    
    if (indexPath.section==2) {
        
        
        UIImageView *image2=[[UIImageView alloc]initWithFrame:CGRectMake(0, 830, 375, 300)];
        image2.image=[UIImage imageNamed:@"235"];
        [_tableview addSubview:image2];
        
    }
    
    if (indexPath.section==3) {
        
        
        UIImageView *image3=[[UIImageView alloc]initWithFrame:CGRectMake(0, 1165, 375, 300)];
        image3.image=[UIImage imageNamed:@"236"];
        [_tableview addSubview:image3];
        
    }
    
    if (indexPath.section==4) {
        
        
        UIImageView *image4=[[UIImageView alloc]initWithFrame:CGRectMake(0, 1500, 375, 300)];
        image4.image=[UIImage imageNamed:@"237"];
        [_tableview addSubview:image4];
        
    }
    if (indexPath.section==5) {
        
        
        UIImageView *image5=[[UIImageView alloc]initWithFrame:CGRectMake(0, 1835, 375, 300)];
        image5.image=[UIImage imageNamed:@"238"];
        [_tableview addSubview:image5];
        
    }
    
    if (indexPath.section==6) {
        
        
        UIImageView *image6=[[UIImageView alloc]initWithFrame:CGRectMake(0, 2170, 375, 300)];
        image6.image=[UIImage imageNamed:@"1"];
        [_tableview addSubview:image6];
        
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
