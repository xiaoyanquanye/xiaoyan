//
//  FourViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 28/2/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "FourViewController.h"


#import "ManhuaViewController.h"
#import "LingyangViewController.h"
#import "FenqigouViewController.h"
#import "ShezhiViewController.h"
#import "LianxiwomenViewController.h"

@interface FourViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSArray *imgArray;
    NSArray *conArray;
}

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"我的";
     [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UITableView *tableView=[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];//创建一个table
    tableView.dataSource=self;
    tableView.delegate=self;//6.设置两个协议，让控制器本身遵守这个协议
    [self.view addSubview:tableView];//5
    self.navigationController.navigationBar.tintColor = [UIColor redColor];//改变返回按钮颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;//改变导航栏颜色
    
//    tableView.separatorStyle = NO;//隐藏黑线
//    
//    tableView.separatorStyle = YES；显示黑线
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];//去掉多余的线条
    
   
    imgArray=@[@"50",@"41",@"1006",@"1005",@"1212"];
    conArray=@[@"小哈医生(敬请期待！)",@"小哈漫画",@"分期购",@"设置",@"联系我们"];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    if (indexPath.section==0) return 100;
    
    return 70;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//行数
    if (section==0) return 1;
    return 1;
}



-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{//12.设置块的间距
    if (section==0) return 20;
    if (section==1) return 30;
    if(section==3) return 20;
    if(section==5) return 20;
    return 0;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{//10.设置块数
    
    return conArray.count+1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{//内容
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator; //显示最右边的箭头
    
    
    
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(10, 8, 60, 50);//(x轴,y轴，宽，高)
    
    
    
    UILabel *label2=[[UILabel alloc]init];
    label2.frame=CGRectMake(0, 10, 500, 50);//(x轴,y轴，宽，高)
    label2.textAlignment=NSTextAlignmentRight;
    label2.textColor=[UIColor blackColor];
    

    UILabel *label=[[UILabel alloc]init];
    label.frame=CGRectMake(90, 10, 500, 50);//(x轴,y轴，宽，高)
    label.textColor=[UIColor blackColor];
    label.font = [UIFont systemFontOfSize:17];
    
//     [tableView  addSubview:label2];
    [cell addSubview:label];
   
    [cell addSubview:imageView];

    if (indexPath.section==0) {
        cell.accessoryType = NO;
        imageView.frame = CGRectMake(10, 17, 70, 70);
        imageView.image=[UIImage imageNamed:@"yonghutouxiang"];
        label.text=@"啸天犬";
        label.frame=CGRectMake(90, 10, 500, 50);//(x轴,y轴，宽，高)
      
        UILabel *label100=[[UILabel alloc]init];
        label100.text=@"潇岩号：1234567";
        label100.frame=CGRectMake(90, 40, 500, 50);//(x轴,y轴，宽，高)
        [cell addSubview:label100];

        cell.selectionStyle = UITableViewCellSelectionStyleNone;//点击它没反应

    }else{
         imageView.image = [UIImage imageNamed:imgArray[indexPath.section-1]];
        label.text=conArray[indexPath.section-1];
//         label2.text=conArray[indexPath.section-1];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    //    if (indexPath.section==1) {
    //        if (indexPath.section=1) {
    //            <#statements#>
    //        }
    //
    //    }
    if (indexPath.section==0) {
        
    }

    
    if (indexPath.section==1) {
        
           }

    
    if (indexPath.section==2) {
        ManhuaViewController *manhua=[[ManhuaViewController alloc]init];
        manhua.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:manhua animated:YES];
    }
    
    if (indexPath.section==3) {
        LingyangViewController *lingyang=[[LingyangViewController alloc]init];
        lingyang.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:lingyang animated:YES];
            }
    
    if (indexPath.section==4) {
        FenqigouViewController *fenqi=[[FenqigouViewController alloc]init];
        
        fenqi.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:fenqi animated:YES];

            }
    
    if (indexPath.section==5) {
        ShezhiViewController *shezhi=[[ShezhiViewController alloc]init];
        shezhi.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:shezhi animated:YES];

            }
    if (indexPath.section==6) {
        LianxiwomenViewController *lianxiwomen=[[LianxiwomenViewController alloc]init];
        lianxiwomen.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:lianxiwomen animated:YES];
        
    }

    
    
    
}

-(void)jianchi{
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
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
