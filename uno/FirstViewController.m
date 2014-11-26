//
//  FirstViewController.m
//  uno
//
//  Created by Angelo Dizon on 8/7/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController () {
    
}
@end

@implementation FirstViewController

- (void)viewDidLoad
{
    NSLog(@"First View Loaded");
    [super viewDidLoad];
    UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    [self setUpViewForOrientation:interfaceOrientation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)btnAbtUs:(id)sender {
    self.navigationItem.title = @"About UNO Premier";
    [self performSegueWithIdentifier:@"gotoAbtUs" sender:self];
}

- (IBAction)btnBoardDirectors:(id)sender {
    [self performSegueWithIdentifier:@"gotoBoardDirectors" sender:self];
}

- (IBAction)btnMissionVision:(id)sender {
    self.navigationItem.title = @"Mission Vision";
    [self performSegueWithIdentifier:@"gotoMissionVision" sender:self];
}

- (IBAction)btnCodeConduct:(id)sender {
    self.navigationItem.title = @"Compensation";
    [self performSegueWithIdentifier:@"gotoCodeConduct" sender:self];
}

- (IBAction)btnCertificates:(id)sender {
    [self performSegueWithIdentifier:@"gotoCertificates" sender:self];
}

-(void)setUpViewForOrientation:(UIInterfaceOrientation)orientation
{
    
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [self setUpViewForOrientation:toInterfaceOrientation];
}

@end
