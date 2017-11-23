//
//  DongtaiViewController.m
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 7/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import "DongtaiViewController.h"

@interface DongtaiViewController (){

UIWebView *webView;

}

@end

@implementation DongtaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"贴吧动态";
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://tieba.baidu.com"]];
    [self.view addSubview: webView];
    [webView loadRequest:request];
//   [self.view setFrame:CGRectMake(0, 0, <#CGFloat width#>, <#CGFloat height#>)]
   // 1、创建UIWebView：
    
//    CGRect bouds = [[UIScreen mainScreen]applicationFrame];
//    UIWebView* webView = [[UIWebView alloc]initWithFrame:bouds];
//    
//   // 2、设置属性：
//    
//    webView.scalesPageToFit = YES;//自动对页面进行缩放以适应屏幕
//    webView.detectsPhoneNumbers = YES;//自动检测网页上的电话号码，单击可以拨打
//    
//   // 3、显示网页视图UIWebView：
//    
//    [self.view addSubview:webView];
//    
//   // 4、加载内容
//    
//    NSURL* url = [NSURL URLWithString:@"http://thedeepestsite.com/"];//创建URL
//    NSURLRequest* request = [NSURLRequest requestWithURL:url];//创建NSURLRequest
//    [webView loadRequest:request];//加载
    // Do any additional setup after loading the view.
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
