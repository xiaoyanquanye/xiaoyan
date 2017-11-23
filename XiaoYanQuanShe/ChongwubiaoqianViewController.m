//
//  ChongwubiaoqianViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 10/5/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "ChongwubiaoqianViewController.h"

@interface ChongwubiaoqianViewController ()<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>{

    UIScrollView *_scrollView;
    UIWebView *webView;


}

@end

@implementation ChongwubiaoqianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"宠物标签";
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
//    _scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
//    
//    _scrollView.backgroundColor=[UIColor whiteColor];
//    
//     _scrollView.contentSize=CGSizeMake([UIScreen mainScreen].bounds.size.width*5, 0);//滚动的尺寸
//    [self.view addSubview:_scrollView];
//    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.chainway.cn/Solutions/yiliao_cw.asp"]];
//    [self.view addSubview: webView];
//    [webView loadRequest:request];
    
    UITableView *tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    tableview.dataSource=self;
    tableview.delegate=self;
    tableview.separatorStyle = NO;//隐藏黑线
    [self.view addSubview:tableview];

    


    // Do any additional setup after loading the view.
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    if (indexPath. section==1) return 400;
    return 300;
    
}




-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{//12.设置块的间距
    if (section==0) return 0;
    
    return 20;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{//10.设置块数
    
    return 2;
   }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//行数


    return 1;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell*cell=[[UITableViewCell alloc]init];
     cell.selectionStyle = UITableViewCellSelectionStyleNone;//点击它没反应
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];//去掉多余的线条

    if (indexPath.section==0) {
        
        UIImageView*image=[[UIImageView alloc]init];
        image.frame=CGRectMake(0, 0, self.view.bounds.size.width, 300);
        image.image=[UIImage imageNamed:@"1004"];
        [cell addSubview:image];
        
    }
    
    if (indexPath.section==1) {
        UILabel *label3=[[UILabel alloc]init];
        label3.text=@"       从狗狗出生伊始，它们便被安装了RFID标签，通常是直接植入狗狗的体内。此后饲养员用手持设备，通过扫描狗狗的眼睛，不断地设定、采集、添加、更改、存储狗狗成长过程中的相关信息。同时记录狗狗在各个时期的防疫记录、疾病信息及饲养过程关键信息的记录。\n       这种模式，提高了犬只信息记录的工作效率、减少了出错率；数据存储空间大、保存周期长且随时可调用历史数据，方便快捷；在给它进行体检、治疗、疗养等过程中，可以通过扫描电子标签方便地查找到该动物的DNA、血型、出生日期等相关信息，方便了动物养殖和我们犬舍后台数据库的监控；动物的信息被纳入信息化管理系统，有利于对动物实现统一、高效的数字化管理。";
        label3.frame=CGRectMake(0, 0, self.view.bounds.size.width, 400);//(x轴,y轴，宽，高)
        label3.textColor=[UIColor grayColor];
        //label.font = [UIFont systemFontOfSize:17];
        label3.font = [UIFont fontWithName:@"Bangla Sangam MN" size:16];
        label3.backgroundColor=[UIColor clearColor];
        cell.backgroundColor=[UIColor whiteColor];
         label3.numberOfLines = 35;//表示label可以多行显示
        
        [cell addSubview:label3];

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
