//
//  FirstViewController.m
//  uno
//
//  Created by Angelo Dizon on 8/7/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *EmbedCode = @"<iframe width=\"480\" height=\"320\" src=\"http://www.youtube.com/embed/WEJigpOFlGE\" frameborder=\"0\" allowfullscreen></iframe>";
    [[self Webview] loadHTMLString:EmbedCode baseURL:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
