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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)btnAbtUs:(id)sender {
    [self performSegueWithIdentifier:@"gotoAbtUs" sender:self];
}

- (IBAction)btnBoardDirectors:(id)sender {
    [self performSegueWithIdentifier:@"gotoBoardDirectors" sender:self];
}

- (IBAction)btnMissionVision:(id)sender {
    [self performSegueWithIdentifier:@"gotoMissionVision" sender:self];
}

- (IBAction)btnCodeConduct:(id)sender {
    [self performSegueWithIdentifier:@"gotoCodeConduct" sender:self];
}

- (IBAction)btnCertificates:(id)sender {
    [self performSegueWithIdentifier:@"gotoCertificates" sender:self];
}

@end
