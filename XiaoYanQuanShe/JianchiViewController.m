//
//  JianchiViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 6/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "JianchiViewController.h"

@interface JianchiViewController ()<UITableViewDataSource,UITableViewDelegate>{

    NSMutableArray *imagearray;

}

@end

@implementation JianchiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"犬舍环境";
    
    UITableView *tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    tableview.delegate=self;
    tableview.dataSource=self;
    imagearray=[NSMutableArray arrayWithObjects:[UIImage imageNamed:@"53"],[UIImage imageNamed:@"54"],[UIImage imageNamed:@"55"], [UIImage imageNamed:@"56"],[UIImage imageNamed:@"57"],[UIImage imageNamed:@"58"],[UIImage imageNamed:@"59"],[UIImage imageNamed:@"60"],[UIImage imageNamed:@"61"],[UIImage imageNamed:@"62"],[UIImage imageNamed:@"63"],[UIImage imageNamed:@"64"],nil];
   // imagearray=@[@"53",@"54",@"55",@"56",@"57",@"58",@"59",@"60",@"61",@"62",@"63",@"64"];
    [self.view addSubview:tableview];
    
    [self.view setBackgroundColor:[UIColor blueColor]];
   
    
        
        
    

    // Do any additional setup after loading the view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//行数

    return imagearray.count;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度

    return 250;


}

-(void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section//更改组头的文本颜色和背景

{
    
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    
    header.textLabel.textColor = [UIColor redColor];//字体颜色
    
    header.contentView.backgroundColor = [UIColor yellowColor];//背景颜色
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DRotate(transform, M_PI_2, 0, 0, 1);
    transform = CATransform3DTranslate(transform, 0, 50, 0);
    transform = CATransform3DScale(transform, 0.0, 0.0, 0.0); //由小变大
    cell.layer.transform = transform;
    cell.layer.opacity = 0.0;
    
    [UIView animateWithDuration:0.6 animations:^{
        cell.layer.transform = CATransform3DIdentity;
        cell.layer.opacity = 1;
    }];
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{//每组头标题
    
    return @"        山西潇岩犬业有限公司，位于太原市，小店区，教育园区，占地面积38亩。其中犬舍160间，每间犬舍11.5平米，分室内室外两部分组成。草坪活动场13块，总面积15亩。是一间集高品质纯种犬繁育，犬寄养训练学校，犬业技术培训等一体的大型犬业。\n         2017年创立至今，凭借着对犬的执着与爱，不断的缔造着行业内的各项第一。";
    
    
}

//
////-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
////
////    return 40;
////
////}
//
//
//
- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section{

    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    
    header.textLabel.textColor = [UIColor redColor];//字体颜色
    
    header.contentView.backgroundColor = [UIColor yellowColor];//背景颜色

}
//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{//每组尾标题
//    
//    
//    return @"";
//    
//}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    
    
    //1.创建静态标识符
    NSString *identifier=@"cell";
    //2.根据标识符从重用池里去取cell
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    //3.如果没有取到，就重新创建一个
    if(cell==nil){
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
        
    }
    //对cell进行赋值
    //这么写不对
   
        cell.imageView.image=[imagearray objectAtIndex:indexPath.row];
   // imagearray.accessibilityFrame=CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);
    cell.selectionStyle = UITableViewCellSelectionStyleNone;//点击它没反应
//    imagearray.accessibilityFrame=
    
    
    
    
//    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
//    cell.imageView.image=imagearray[indexPath.row];
//    
//    
   return cell;

//    static NSString*identifier=@"cell";
//    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
//    if (cell==nil) {
//        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
//    }
// UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
//    UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.frame = CGRectMake(10, 8, 60, 50);//(x轴,y轴，宽，高)
//
//    [cell addSubview:imageView];
//
//    if (indexPath.section) {
//         imageView.image = [UIImage imageNamed:imagearray[indexPath.row]];
//        
//    }
    
    
    
    
    
    
//    UITableViewCell *cell=[[UITableViewCell alloc]init];
//    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator; //显示最右边的箭头
//
//    UILabel *label1=[[UILabel alloc]init];
//    label1.text=@"        潇岩犬舍，成立于2017年6月，潇岩人秉承着：品质源于认真，认真因为诚信，诚信的态度始于爱。不断的学习进步，钻研每一个小问题，不怕麻烦，戒骄戒躁。\n        潇岩犬寄养训练学校也正在新建中。我们把对赛级犬的关心及专业技术保障，转移到宠物犬身上。潇岩的新思想也脱口而出“犬即为人，人只为犬”。是的，这就是服务的标准以及自我规范的要求。培养一批批高素质的饲养人才，也成为潇岩犬业任重而道远的一项使命。并新增了各种训练器材以及狗狗泳池，为爱犬提供最好的娱乐场地。并且为了犬家长们也有娱乐，特有酒吧，钓鱼塘，凉亭，台球，篮球，健身房等项目，为广大家长们提供了人犬共乐的场所。\n       潇岩犬舍全体职工竭诚欢迎您的到来。";
//    label1.frame=CGRectMake(20, 70, 340, 600);//(x轴,y轴，宽，高)
//    //    label1.textColor=[UIColor blueColor];
//    //  label1.textColor= [UIColor colorWithRed:242/255.0 green:117/255.0 blue:63/255.0 alpha:1];//主色调
//    label1.textColor=[UIColor blackColor];
//    label1.numberOfLines = 25;//表示label可以多行显示
//    label1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:19];
//    label1.backgroundColor=[UIColor clearColor];
   //
//    [self.view addSubview:label1];

   //    if (imageView!=nil) {
//         imageView.image = [UIImage imageNamed:imagearray[indexPath.section]];
//    }
    
    
    
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
