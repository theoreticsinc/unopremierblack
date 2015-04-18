//
//  YouTubeViewController.h
//  Unopremier
//
//  Created by Angelo Dizon on 3/15/15.
//  Copyright (c) 2015 Unlimited Network of Opportunities. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YouTubeViewController : UIViewController


@property (strong) NSString *youtube_link;

@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end
