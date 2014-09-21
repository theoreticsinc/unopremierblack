//
//  FourthViewController.m
//  uno
//
//  Created by Angelo Dizon on 8/7/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()
- (IBAction)btnDownload:(id)sender;

@end

@implementation FourthViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnDownload:(id)sender {
    NSURL *url = [ [ NSURL alloc ] initWithString: @"http://uno-corp.com/home/homepage/registered/country-product-packages" ];
    
    [[UIApplication sharedApplication] openURL:url];
}
@end
