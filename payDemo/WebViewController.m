//
//  WebViewController.m
//  payDemo
//
//  Created by cheng yin on 16/2/23.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()<UIWebViewDelegate>

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:webView];
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    webView.delegate = self;
    [self.view addSubview: webView];
    [webView loadRequest:request];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"request:%@",request.URL);
    if ([[request.URL absoluteString] rangeOfString:@"http://www.baidu.com/from=844b/s?word=%E5%BE%AE%E4%BF%A1&"].location != NSNotFound) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"wechat://"]];
    }
    else if([[request.URL absoluteString] rangeOfString:@"http://www.baidu.com/from=844b/s?word=%E6%94%AF%E4%BB%98%E5%AE%9D&"].location != NSNotFound){
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"alipay://"]];
    }
    
    return YES;
}

@end
