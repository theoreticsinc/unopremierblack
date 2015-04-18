//
//  YouTubeViewController.m
//  Unopremier
//
//  Created by Angelo Dizon on 3/15/15.
//  Copyright (c) 2015 Unlimited Network of Opportunities. All rights reserved.
//

#import "YouTubeViewController.h"

@interface YouTubeViewController ()

@end

@implementation YouTubeViewController

@synthesize youtube_link;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
    _webview.backgroundColor = [UIColor blackColor];
    _webview.allowsInlineMediaPlayback = YES;
    _webview.mediaPlaybackRequiresUserAction = NO;
    [self.view addSubview:_webview];
    
    NSURL *url = [NSURL URLWithString: youtube_link];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webview loadRequest:request];
    
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) Back {
    NSLog (@"Back Pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
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
