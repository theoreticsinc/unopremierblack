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
	// Do any additional setup after loading the view, typically from a nib.
    // Do any additional setup after loading the view, typically from a nib.
    NSString *EmbedCode = @"<iframe width=\"265\" height=\"140\" src=\"http://www.youtube.com/embed/Hwz4z5AqGuE\" frameborder=\"0\" allowfullscreen></iframe>";
    [[self Webview] loadHTMLString:EmbedCode baseURL:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
