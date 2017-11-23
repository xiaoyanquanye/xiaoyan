//
//  OneViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 28/2/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "OneViewController.h"
#import "WenhuaViewController.h"
#import "JianchiViewController.h"
#import "DongtaiViewController.h"
#import "JiangxiangViewController.h"
#import "XinlihuaViewController.h"
#import "GongquanViewController.h"
#import "MuquanViewController.h"
#import "YouquanViewController.h"
#import "FengcaiViewController.h"
#import "Lunbo.h"

@interface OneViewController ()<UITableViewDelegate,UITableViewDataSource,lunboDelegate>
{

    NSArray *array;//记录文字
    NSArray *array1;// 记录小文字
    NSArray *array2;//记录图片

}

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // [self.view setBackgroundColor:[UIColor whiteColor]];
     // [self.view setBackgroundColor:[UIColor colorWithRed:242/255.0 green:117/255.0 blue:63/255.0 alpha:1]];//

    self.title=@"首页";
    
     self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"企业精神" style:UIBarButtonItemStylePlain target:self action:@selector(pushController)];
    
    UITableView *tableView=[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];//创建一个table
    self.navigationController.navigationBar.tintColor = [UIColor redColor];//改变返回按钮颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;//改变导航栏颜色
    tableView.dataSource=self;
    tableView.delegate=self;//6.设置两个协议，让控制器本身遵守这个协议
    [self.view addSubview:tableView];//5
//self.navigationController.navigationBar.clipsToBounds = YES;//让标题栏变透明
    array=@[@"犬舍环境",@"最新动态",@"曾获奖项",@"想说的话"];
    array1=@[@"这是我们每一位潇岩人的辛勤付出的产物",@"这里有我们潇岩犬舍一路走过的无悔岁月",@"每一枚奖杯背后都是我们潇岩人的努力",@"如果您没有没有考虑好，建议您不要把他抱回家"];
    array2=[NSArray arrayWithObjects:[UIImage imageNamed:@"jianchi"],[UIImage imageNamed:@"dongtai"],[UIImage imageNamed:@"jiangxiang"], [UIImage imageNamed:@"xinlihua"],nil];
    

    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];//去掉多余的线条

    
    
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)carouselView:(Lunbo *)carouselView indexOfClickedImageBtn:(NSUInteger )index {
    NSLog(@"点击了第%ld张图片",index);
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    if (indexPath.section==0) return 200;
    if (indexPath.section==1) return 100;
    
    //if (indexPath.section==3) return 60;
    return 80;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//行数
  
//    if(section==0) return 1;
//    if(section==1)return 1;
    return 1;
//    return array.count;
}



-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{//12.设置块的间距
    if (section==0) return 0;
    if (section==1) return 0;
    //    if (section==1) return 30;
    
    return 20;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{//10.设置块数
    
    return array.count+2;
//    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {//副标题

    

    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{//内容
    
    NSString *identifier=@"cell";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell==nil){
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }

    
    UILabel *label=[[UILabel alloc]init];
    label.frame=CGRectMake(90, 7, 500, 50);//(x轴,y轴，宽，高)
    label.textColor=[UIColor blackColor];
    //label.font = [UIFont systemFontOfSize:17];
    label.font = [UIFont fontWithName:@"Bangla Sangam MN" size:16];
    label.backgroundColor=[UIColor clearColor];
    cell.backgroundColor=[UIColor whiteColor];
    
    UILabel *label1=[[UILabel alloc]init];
    label1.frame=CGRectMake(90, 35, 500, 50);//(x轴,y轴，宽，高)
    label1.textColor=[UIColor grayColor];
    //label.font = [UIFont systemFontOfSize:17];
    label1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:12];
    label1.backgroundColor=[UIColor clearColor];
    cell.backgroundColor=[UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    //         UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(10, 11, 60, 60);
   
    [cell addSubview:label];
    [cell addSubview:label1];
    [cell addSubview:imageView];

    
//
//    
    if (indexPath.section==0) {
        
        Lunbo *carousel = [[Lunbo alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
        carousel.delegate = self;
        //    carousel.scrollDorectionPortrait = YES;
        carousel.images = @[
                            [UIImage imageNamed:@"2"],
                            [UIImage imageNamed:@"3"],
                            [UIImage imageNamed:@"68"],
                            [UIImage imageNamed:@"5"],
                            [UIImage imageNamed:@"69"]
                            ];
        carousel.currentPageColor = [UIColor orangeColor];
        carousel.pageColor = [UIColor grayColor];
        [cell addSubview:carousel];
        return cell;
    }
//
    else if (indexPath.section==1){
        cell.selectionStyle = UITableViewCellSelectionStyleNone;//点击它没反应
    
     
        
    
        UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button3.frame=CGRectMake(20, 15, 60, 60);//矩形大小（x轴，y轴，宽度，高度）
        button3.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button3];//通过父子视图显示出来
                [button3 setBackgroundImage:[UIImage imageNamed:@"gongquan"] forState:UIControlStateNormal];//设置字体后矩形图片，                                                                                        并控制正常状态

        [button3 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        //点击事件
        //Target:相应这个事件的类，通常是控制器的类self
        //action：用来响应的事件
        //提到了目标动作机制
    
        
    label=[[UILabel alloc]init];
    label.text=@"公犬";
    label.frame=CGRectMake(35, 63, 500, 50);//(x轴,y轴，宽，高)
    label.textColor=[UIColor blackColor];
    //label.font = [UIFont systemFontOfSize:17];
    label.font = [UIFont fontWithName:@"Bangla Sangam MN" size:16];
    label.backgroundColor=[UIColor clearColor];
    cell.backgroundColor=[UIColor whiteColor];
    
    
    
    
    [cell addSubview:label];
    
    
    
    
        
        UIButton *button2=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button2.frame=CGRectMake(115, 15, 60, 60);//矩形大小（x轴，y轴，宽度，高度）
        button2.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button2];//通过父子视图显示出来
               [button2 setBackgroundImage:[UIImage imageNamed:@"muquan"] forState:UIControlStateNormal];//设置字体后矩形图片，                                                                                        并控制正常状态

        [button2 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        //点击事件
        //Target:相应这个事件的类，通常是控制器的类self
        //action：用来响应的事件
        //提到了目标动作机制

    
    label=[[UILabel alloc]init];
    label1.text=@"母犬";
    label1.frame=CGRectMake(130, 63, 500, 50);//(x轴,y轴，宽，高)
    label1.textColor=[UIColor blackColor];
    //label.font = [UIFont systemFontOfSize:17];
    label1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:16];
    label1.backgroundColor=[UIColor clearColor];
    cell.backgroundColor=[UIColor whiteColor];
    
    [cell addSubview:label1];
    
    
    
        
        UIButton *button1=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button1.frame=CGRectMake(205, 15, 60, 60);//矩形大小（x轴，y轴，宽度，高度）
        button1.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button1];//通过父子视图显示出来
               [button1 setBackgroundImage:[UIImage imageNamed:@"youquan"] forState:UIControlStateNormal];//设置字体后矩形图片，                                                                                        并控制正常状态
        
        [button1 addTarget:self action:@selector(buttonone:) forControlEvents:UIControlEventTouchUpInside];
        //点击事件
        //Target:相应这个事件的类，通常是控制器的类self
        //action：用来响应的事件
        //提到了目标动作机制


    
    UILabel *label2=[[UILabel alloc]init];
    label2.text=@"幼犬";
    label2.frame=CGRectMake(220, 63, 500, 50);//(x轴,y轴，宽，高)
    label2.textColor=[UIColor blackColor];
    //label.font = [UIFont systemFontOfSize:17];
    label2.font = [UIFont fontWithName:@"Bangla Sangam MN" size:16];
    label2.backgroundColor=[UIColor clearColor];
    cell.backgroundColor=[UIColor whiteColor];
    
    [cell addSubview:label2];
    
    
//    UIImageView *imageView3 = [[UIImageView alloc] init];
//    //         UIImageView *imageView = [[UIImageView alloc] init];
//    imageView3.frame = CGRectMake(295, 15, 60, 60);
//    imageView3.image = [UIImage imageNamed:@"fengcai"];
//    [cell addSubview:imageView3];
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];//自定义一个button
        button.frame=CGRectMake(295, 15, 60, 60);//矩形大小（x轴，y轴，宽度，高度）
        button.backgroundColor=[UIColor clearColor];//矩形颜色
        [cell addSubview:button];//通过父子视图显示出来
        // [button setTitle:@"按钮（正常）" forState:UIControlStateNormal];//设置标题，并控制正常状态，就是往button上写字
//        [button setTitle:@"下一步(正常)" forState:UIControlStateNormal];//设置标题，并控制正常状态
//        [button setTitle:@"下一步(高亮)" forState:UIControlStateHighlighted];//设置标题，并控制高亮状态
        [button setBackgroundImage:[UIImage imageNamed:@"fengcai"] forState:UIControlStateNormal];//设置字体后矩形图片，                                                                                        并控制正常状态

        [button addTarget:self action:@selector(buttontwo:) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label3=[[UILabel alloc]init];
    label3.text=@"风采";
    label3.frame=CGRectMake(310, 63, 500, 50);//(x轴,y轴，宽，高)
    label3.textColor=[UIColor blackColor];
    //label.font = [UIFont systemFontOfSize:17];
    label3.font = [UIFont fontWithName:@"Bangla Sangam MN" size:16];
    label3.backgroundColor=[UIColor clearColor];
    cell.backgroundColor=[UIColor whiteColor];
    
    
        [cell addSubview:label3];
    
        return cell;
      
    }
    
    
     UIImageView *image1=[[UIImageView alloc]init];
    UILabel *label11=[[UILabel alloc]init];
    UILabel *label10=[[UILabel alloc]init];
     [cell addSubview:image1];
     [cell addSubview:label11];
    [cell addSubview:label10];
     if(indexPath.section==2){
        image1.frame=CGRectMake(20, 12, 60,60);
        image1.image=[UIImage imageNamed:@"huanjin"];
        

        
        label11.frame=CGRectMake(100, 8, 500, 30);//(x轴,y轴，宽，高)
        label11.text=@"犬舍环境";
        label11.textColor=[UIColor blackColor];
        label11.font = [UIFont systemFontOfSize:18];
         
         label10.frame=CGRectMake(100, 38, 500, 30);//(x轴,y轴，宽，高)
         label10.text=@"这是每一位潇岩人辛勤付出的产物";
         label10.textColor=[UIColor blackColor];
         label10.font = [UIFont systemFontOfSize:15];
    
    }
    
    if(indexPath.section==3){
        image1.frame=CGRectMake(20, 12, 60,60);
        image1.image=[UIImage imageNamed:@"dongtai"];
        
        
        
        label11.frame=CGRectMake(100, 8, 500, 30);//(x轴,y轴，宽，高)
        label11.text=@"贴吧讨论";
        label11.textColor=[UIColor blackColor];
        label11.font = [UIFont systemFontOfSize:18];
        
        label10.frame=CGRectMake(100, 38, 500, 30);//(x轴,y轴，宽，高)
        label10.text=@"在这里您可以发表一下自己的养宠感受";
        label10.textColor=[UIColor blackColor];
        label10.font = [UIFont systemFontOfSize:15];
        
        
        
        
        
    }
    
    
    if(indexPath.section==4){
        image1.frame=CGRectMake(20, 12, 60,60);
        image1.image=[UIImage imageNamed:@"jiangxiang"];
        
        
        
        label11.frame=CGRectMake(100, 8, 500, 30);//(x轴,y轴，宽，高)
        label11.text=@"曾获荣誉";
        label11.textColor=[UIColor blackColor];
        label11.font = [UIFont systemFontOfSize:18];
        
        label10.frame=CGRectMake(100, 38, 500, 30);//(x轴,y轴，宽，高)
        label10.text=@"每一个荣誉背后都是我们潇岩人的努力";
        label10.textColor=[UIColor blackColor];
        label10.font = [UIFont systemFontOfSize:15];
        
    }
    if(indexPath.section==5){
        image1.frame=CGRectMake(20, 12, 60,60);
        image1.image=[UIImage imageNamed:@"xinlihua"];
        
        
        
        label11.frame=CGRectMake(100, 8, 500, 30);//(x轴,y轴，宽，高)
        label11.text=@"心里话";
        label11.textColor=[UIColor blackColor];
        label11.font = [UIFont systemFontOfSize:18];
        
        label10.frame=CGRectMake(100, 38, 500, 30);//(x轴,y轴，宽，高)
        label10.text=@"这是狗狗们内心深处想告诉我们的话";
        label10.textColor=[UIColor blackColor];
        label10.font = [UIFont systemFontOfSize:15];
        
    }


    

//else{
////    imageView.image = [UIImage imageNamed:array2[indexPath.row-2]];
////    label.text=array[indexPath.row-2];
////    label1.text=array1[indexPath.row-2];
//
//      label.text=[array objectAtIndex:indexPath.row];
//     label1. text=[array1 objectAtIndex:indexPath.row];
//    imageView.image=[array2 objectAtIndex:indexPath.row];
//    
//    return cell;
//    }


    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];//点击弹起

//    if (indexPath.row==1) {
//        if (indexPath.section==1) {
//            GongquanViewController *gongquan=[[GongquanViewController alloc]init];
//            gongquan.hidesBottomBarWhenPushed=YES;
//            [self.navigationController pushViewController:gongquan animated:YES];
//
//        }
//        
//        if (indexPath.row==2) {
//            MuquanViewController *muquan=[[MuquanViewController alloc]init];
//            muquan.hidesBottomBarWhenPushed=YES;
//            [self.navigationController pushViewController:muquan animated:YES];
//            
//        }
//
//        
//    }

    
    if (indexPath.section==2) {//犬舍环境
        JianchiViewController *jianchi=[[JianchiViewController alloc]init];
        jianchi.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:jianchi animated:YES];
    }
    
    if (indexPath.section==3) {//最新动态
        DongtaiViewController *dongtai=[[DongtaiViewController alloc]init];
        
        dongtai.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:dongtai animated:YES];
    }

    if (indexPath.section==4) {//犬舍环境
        JiangxiangViewController *jiangxiang=[[JiangxiangViewController alloc]init];
        jiangxiang.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:jiangxiang animated:YES];
    }

    if (indexPath.section==5) {//心里话
        XinlihuaViewController *xinlihua=[[XinlihuaViewController alloc]init];
        xinlihua.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:xinlihua animated:YES];
    }



}

-(void)jianchi{

    [self.navigationController popViewControllerAnimated:YES];


}
-(void)pushController{//企业精神
    
    WenhuaViewController *wenhua=[[WenhuaViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
   [wenhua setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:wenhua animated:YES];
}

- (void)buttonClicked:(UIButton *)sender//公犬
{
    GongquanViewController *gongquan=[[GongquanViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [gongquan setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:gongquan animated:YES];

    
}

- (void)button:(UIButton *)sender//母犬
{
    MuquanViewController *muquan=[[MuquanViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [muquan setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:muquan animated:YES];
    
    
}

- (void)buttonone:(UIButton *)sender//幼犬
{
    YouquanViewController *youquan=[[YouquanViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [youquan setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:youquan animated:YES];
    
    
}

- (void)buttontwo:(UIButton *)sender//风采
{
    FengcaiViewController *fengcai=[[FengcaiViewController alloc]init];
    //self.tabBarController.tabBar.hidden=YES;
    [fengcai setHidesBottomBarWhenPushed:YES];//跳转时隐藏下方标题栏
    [self.navigationController pushViewController:fengcai animated:YES];
    
    
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
