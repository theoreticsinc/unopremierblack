//
//  SecondViewController.m
//  uno
//
//  Created by Angelo Dizon on 8/7/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
- (IBAction)intl:(id)sender;
- (IBAction)local:(id)sender;
- (IBAction)marketingPlan:(id)sender;

@end

@implementation ThirdViewController

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

- (IBAction)intl:(id)sender {
    [self performSegueWithIdentifier:@"gotoIntl" sender:self];
}

- (IBAction)local:(id)sender {
    [self performSegueWithIdentifier:@"goto2Ways" sender:self];
}

- (IBAction)downloadPlan:(id)sender {
    NSURL *url = [ [ NSURL alloc ] initWithString: @"http://unopremier.com/compensation/ten-ways-to-earn" ];
    
    [[UIApplication sharedApplication] openURL:url];
}
@end
