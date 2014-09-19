//
//  SecondViewController.m
//  uno
//
//  Created by Angelo Dizon on 8/7/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "SecondViewController.h"
#import "HouseholdTableViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnFoodSupplement:(id)sender {
    [self performSegueWithIdentifier:@"gotoFoodSupplement" sender:self];
}

- (IBAction)btnHealthyDrinks:(id)sender {
    [self performSegueWithIdentifier:@"gotoHealthyDrinks" sender:self];
}

- (IBAction)btnBeautyProducts:(id)sender {
    [self performSegueWithIdentifier:@"gotoBeautyProducts" sender:self];
}

- (IBAction)btnPersonalCare:(id)sender {
    [self performSegueWithIdentifier:@"gotoPersonalCare" sender:self];
}

- (IBAction)btnHouseholdProducts:(id)sender {
    [self performSegueWithIdentifier:@"gotoHouseholdProducts" sender:self];
}

- (IBAction)btnBreakthrough:(id)sender {
    [self performSegueWithIdentifier:@"gotoBreakthrough" sender:self];
}


@end
