//
//  TenWaysViewController.m
//  Unopremier
//
//  Created by Angelo Dizon on 3/16/15.
//  Copyright (c) 2015 Unlimited Network of Opportunities. All rights reserved.
//

#import "TenWaysViewController.h"

@interface TenWaysViewController ()

@end

@implementation TenWaysViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)local:(id)sender {
    [self performSegueWithIdentifier:@"gotoLocal" sender:self];
}

- (IBAction)intl:(id)sender {
    [self performSegueWithIdentifier:@"gotoIntl" sender:self];
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
