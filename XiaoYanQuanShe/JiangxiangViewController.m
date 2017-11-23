//
//  JiangxiangViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 7/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "JiangxiangViewController.h"

@interface JiangxiangViewController ()<UITableViewDataSource,UITableViewDelegate>{
   
    UIButton *button1;
     NSMutableArray *array1;
   NSMutableArray *array2;
    
    
    
}


@end

@implementation JiangxiangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"曾获奖项";
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    NSArray *array=[NSArray arrayWithObjects:@"哈士奇", @"柴犬",nil];
    
    _stc=[[UISegmentedControl alloc] initWithItems:array];
    [_stc addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    
    //    [_stc addTarget:self action:@selector(fenlan:) forControlEvents:UIControlEventTouchDown];
    
    _stc.selectedSegmentIndex=0;
    
    _stc.frame=CGRectMake((self.view.frame.size.width)-330, 70, 300, 40);
    
    _stc.backgroundColor=[UIColor whiteColor];
    
    [self.view addSubview:_stc];

     [self.scroll=[UIScrollView alloc]initWithFrame:CGRectMake(0, 120, self.view.bounds.size.width,  self.view.bounds.size.height-120)];
    
    array1=[NSArray arrayWithObjects:@"周笔畅",@"邓紫棋",@"韦唯",@"罗琦",@"韩磊",nil];
    
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
        return 5;
    }
    
    return 5;
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
    
    
    if (tableView.tag==1111) {
        
        UIImageView *imageView1 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 300, self.view.bounds.size.width, 300);
        imageView1.image=[UIImage imageNamed:@"309"];
        [tableView addSubview:imageView1];

        
        UIImageView *imageView2= [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView2.frame = CGRectMake(0, 600, self.view.bounds.size.width, 300);
        imageView2.image=[UIImage imageNamed:@"310"];
        [tableView addSubview:imageView2];
        
        UIImageView *imageView3= [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView3.frame = CGRectMake(0, 900, self.view.bounds.size.width, 300);
        imageView3.image=[UIImage imageNamed:@"311"];
        [tableView addSubview:imageView3];
        
        UIImageView *imageView4= [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView4.frame = CGRectMake(0, 1200, self.view.bounds.size.width, 300);
        imageView4.image=[UIImage imageNamed:@"312"];
        [tableView addSubview:imageView4];

        if (indexPath.section==0) {
            
//            UIImageView *imageview=[[UIImageView alloc]initWithImage:@"308"];
//            imageview.frame=cell.bounds;
//            [cell addSubview:imageview];
            
            UIImageView *imageView = [[UIImageView alloc] init];
            //         UIImageView *imageView = [[UIImageView alloc] init];
            imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
            imageView.image=[UIImage imageNamed:@"308"];
            [tableView addSubview:imageView];

           
        }
        
       
        }
    
    if (tableView.tag==2222) {
        UIImageView *imageView = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
        imageView.image=[UIImage imageNamed:@"313"];
        [tableView addSubview:imageView];
        
        UIImageView *imageView1 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView1.frame = CGRectMake(0, 300, self.view.bounds.size.width, 300);
        imageView1.image=[UIImage imageNamed:@"314"];
        [tableView addSubview:imageView1];
        
        UIImageView *imageView2 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView2.frame = CGRectMake(0, 600, self.view.bounds.size.width, 300);
        imageView2.image=[UIImage imageNamed:@"317"];
        [tableView addSubview:imageView2];

        UIImageView *imageView3 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView3.frame = CGRectMake(0, 900, self.view.bounds.size.width, 300);
        imageView3.image=[UIImage imageNamed:@"315"];
        [tableView addSubview:imageView3];

        UIImageView *imageView4 = [[UIImageView alloc] init];
        //         UIImageView *imageView = [[UIImageView alloc] init];
        imageView4.frame = CGRectMake(0, 1200, self.view.bounds.size.width, 300);
        imageView4.image=[UIImage imageNamed:@"316"];
        [tableView addSubview:imageView4];
        
//        UIImageView *imageView5 = [[UIImageView alloc] init];
//        //         UIImageView *imageView = [[UIImageView alloc] init];
//        imageView5.frame = CGRectMake(0, 1500, self.view.bounds.size.width, 300);
//        imageView5.image=[UIImage imageNamed:@"317"];
//        [tableView addSubview:imageView5];


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
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resourcesthat can be recreated.
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
