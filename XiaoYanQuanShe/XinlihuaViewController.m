//
//  XinlihuaViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 7/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "XinlihuaViewController.h"

@interface XinlihuaViewController ()<UITabBarDelegate,UITableViewDataSource>{

    NSArray *imgArray;
    

}

@end

@implementation XinlihuaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"想说的话";
    
    [self.view setBackgroundColor:[UIColor colorWithRed:242/255.0 green:117/255.0 blue:63/255.0 alpha:1]];
    
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
    
   // imgArray=@[@"298",@"299",@"300",@"301",@"302",@"303",@"304",@"305",@"306",@"307",];
    imgArray=[NSArray arrayWithObjects:[UIImage imageNamed:@"298"],[UIImage imageNamed:@"299"],[UIImage imageNamed:@"300"], [UIImage imageNamed:@"301"],[UIImage imageNamed:@"302"],[UIImage imageNamed:@"303"],[UIImage imageNamed:@"304"],[UIImage imageNamed:@"305"],[UIImage imageNamed:@"306"],[UIImage imageNamed:@"307"],nil];
    
//    UILabel *label1=[[UILabel alloc]init];
//    label1.text=@"这是美国狗证上的十句话：";
//    label1.frame=CGRectMake(80, 80, 500, 50);//(x轴,y轴，宽，高)
//    label1.textColor=[UIColor blackColor];
//    //label.font = [UIFont systemFontOfSize:17];
//    label1.font = [UIFont fontWithName:@"Bangla Sangam MN" size:20];
//    label1.backgroundColor=[UIColor clearColor];
//    
//    
//    [self.view addSubview:label1];

    
    
//    UIImageView *imageView = [[UIImageView alloc] init];
//    //         UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.frame = CGRectMake(0, 150, [UIScreen mainScreen].bounds.size.width , 300 );
//    imageView.image = [UIImage imageNamed:@"gouzheng1"];
//    [self.view addSubview:imageView];
//    
//    UIImageView *imageView1 = [[UIImageView alloc] init];
//    //         UIImageView *imageView = [[UIImageView alloc] init];
//    imageView1.frame = CGRectMake(0, 500, [UIScreen mainScreen].bounds.size.width , 300 );
//    imageView1.image = [UIImage imageNamed:@"gouzheng1"];
//    [self.view addSubview:imageView1];

    


    
    // Do any additional setup after loading the view.
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{//11.块的高度
    
    
    return 300;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{//行数
    
    return 1;
}



-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{//12.设置块的间距
  
        return 0;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{//10.设置块数
    
    return imgArray.count+1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{//内容
    
       //1.创建静态标识符
    NSString *identifier=@"cell";
    //2.根据标识符从重用池里去取cell
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    //3.如果没有取到，就重新创建一个
    if(cell==nil){
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
   
    
    UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.frame = CGRectMake(10, 8, 60, 50);//(x轴,y轴，宽，高)
    [cell addSubview:imageView];
    
    if (indexPath.section==0) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"298"];
    }
    if (indexPath.section==1) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"299"];
    }
    if (indexPath.section==2) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"300"];
    }

    if (indexPath.section==3) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"301"];
    }

    if (indexPath.section==4) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"302"];
    }

    if (indexPath.section==5) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"303"];
    }

    if (indexPath.section==6) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"304"];
    }

    if (indexPath.section==7) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"305"];
    }

    if (indexPath.section==8) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"306"];
    }
    if (indexPath.section==9) {
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"307"];
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
