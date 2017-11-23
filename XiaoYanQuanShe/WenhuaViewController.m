//
//  WenhuaViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 28/2/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "WenhuaViewController.h"

@interface WenhuaViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation WenhuaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"企业精神";
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UITableView *tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.dataSource=self;
    tableview.delegate=self;
    tableview.separatorStyle = NO;//隐藏黑线
    [self.view addSubview:tableview];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return 3;

}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
//    
//    return 1000;
//    
//    
//}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

  
    NSString *identifier=@"cell";
   
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell==nil){
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }

    UIImageView *imageView = [[UIImageView alloc] init];
    //         UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(0, 50,[UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height );
    imageView.image = [UIImage imageNamed:@"65"];
    imageView.alpha =0.2;
    [self.view addSubview:imageView];

    UILabel *label1=[[UILabel alloc]init];
    label1.text=@"        潇岩犬舍，成立于2017年6月，潇岩人秉承着：品质源于认真，认真因为诚信，诚信的态度始于爱。不断的学习进步，钻研每一个小问题，不怕麻烦，戒骄戒躁。\n        潇岩犬寄养训练学校也正在新建中。我们把对赛级犬的关心及专业技术保障，转移到宠物犬身上。潇岩的新思想也脱口而出“犬即为人，人只为犬”。是的，这就是服务的标准以及自我规范的要求。培养一批批高素质的饲养人才，也成为潇岩犬业任重而道远的一项使命。并新增了各种训练器材以及狗狗泳池，为爱犬提供最好的娱乐场地。并且为了犬家长们也有娱乐，特有酒吧，钓鱼塘，凉亭，台球，篮球，健身房等项目，为广大家长们提供了人犬共乐的场所。\n       潇岩犬舍全体职工竭诚欢迎您的到来。";
    label1.frame=CGRectMake(20, 70, 340, 600);//(x轴,y轴，宽，高)
    //    label1.textColor=[UIColor blueColor];
    //  label1.textColor= [UIColor colorWithRed:242/255.0 green:117/255.0 blue:63/255.0 alpha:1];//主色调
    label1.textColor=[UIColor blackColor];
    label1.numberOfLines = 45;//表示label可以多行显示
    label1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:19];
    label1.backgroundColor=[UIColor clearColor];
    //    self.view.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:label1];
      tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];//去掉多余的线条
    cell.selectionStyle = UITableViewCellSelectionStyleNone;//点击它没反应
//    //对cell进行赋值
//    cell.textLabel.text=@"潇岩";
//    //比上面的小一点
//    cell.detailTextLabel.text=@"潇岩犬舍恭候您的到来！";
//    //往里面放进去图片
//    cell.imageView.image=[UIImage imageNamed:@"1"];
//    //往右上角添加小图标
//    cell.accessoryType=UITableViewRowAnimationRight;

    return cell;
}


    

    

    
    
    // Do any additional setup after loading the view.


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
