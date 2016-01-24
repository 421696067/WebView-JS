//
//  ViewController.m
//  WebView js
//
//  Created by 李攀祥 on 16/1/18.
//  Copyright © 2016年 李攀祥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.iqiyi.com/v_19rrl4b4rk.html"]]];
}


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *html = [self.webView stringByEvaluatingJavaScriptFromString:@"document.getElementsByTagName('html')[0].outerHTML;"];
    NSLog(@"+++++++++++%@+++++++++++",html);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
