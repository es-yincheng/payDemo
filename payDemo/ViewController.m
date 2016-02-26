//
//  ViewController.m
//  payDemo
//
//  Created by cheng yin on 16/2/23.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *jump = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 80, 30)];
    [jump setTitle:@"支付宝" forState:UIControlStateNormal];
    jump.backgroundColor = [UIColor redColor];
    [self.view addSubview:jump];
    [jump addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *jump2 = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 80, 30)];
    [jump2 setTitle:@"微信" forState:UIControlStateNormal];
    jump2.backgroundColor = [UIColor redColor];
    [self.view addSubview:jump2];
    [jump2 addTarget:self action:@selector(jump2) forControlEvents:UIControlEventTouchUpInside];

    
    UIButton *jump3 = [[UIButton alloc]initWithFrame:CGRectMake(100, 400, 80, 30)];
    [jump3 setTitle:@"web" forState:UIControlStateNormal];
    jump3.backgroundColor = [UIColor redColor];
    [self.view addSubview:jump3];
    [jump3 addTarget:self action:@selector(jump3) forControlEvents:UIControlEventTouchUpInside];

    
}

-(void)jump
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"alipayshare://"]];
}

-(void)jump2
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"wechat://"]];
}

-(void)jump3
{
    WebViewController *web = [[WebViewController alloc] init];
    
    
    
    if([[[UIDevice
          currentDevice] systemVersion] floatValue]>=8.0) {
        
        self.modalPresentationStyle=UIModalPresentationOverCurrentContext;
        
    }
    
    [self.navigationController pushViewController:web animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
