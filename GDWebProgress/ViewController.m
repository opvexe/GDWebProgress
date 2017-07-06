//
//  ViewController.m
//  GDWebProgress
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 光大银行. All rights reserved.
//

#import "ViewController.h"
#import "GDWebProgress.h"

@interface ViewController ()<UIWebViewDelegate>

@property (nonatomic, strong)                   GDWebProgress   *progress;
@property (nonatomic, strong)                   UIWebView       *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    _webView.delegate = self;
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"wwww.baidu.com"]];
    [_webView loadRequest:request];
    
    _webView.backgroundColor = [UIColor whiteColor];
    
    _progress = [[GDWebProgress alloc]init];
    _progress.frame = CGRectMake(0, 42, [UIScreen mainScreen].bounds.size.width, 2);
    
    [self.navigationController.navigationBar.layer addSublayer:self.progress];
    [self.view addSubview:self.webView];
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [_progress startLoad];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [_progress finishedLoad];    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    [_progress finishedLoad];
}

- (void)dealloc {
    [_progress closeTimer];
    [_progress removeFromSuperlayer];
    _progress = nil;
}
@end
