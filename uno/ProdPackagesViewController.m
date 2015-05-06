//
//  ProdPackagesViewController.m
//  Unopremier
//
//  Created by Angelo Dizon on 5/5/15.
//  Copyright (c) 2015 Unlimited Network of Opportunities. All rights reserved.
//

#import "ProdPackagesViewController.h"

@interface ProdPackagesViewController ()

@end

@implementation ProdPackagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buy:(id)sender {
    NSURL *url = [ [ NSURL alloc ] initWithString: @"http://unopremier.com/packages" ];
    
    [[UIApplication sharedApplication] openURL:url];
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
