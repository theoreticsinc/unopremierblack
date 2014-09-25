//
//  DataViewController.m
//  PageV2
//
//  Created by Angelo Dizon on 9/23/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
    //self.dataImage.image = [UIImage imageNamed:@"prod_kojic.jpg"];
    NSString *strImage = self.dataImageObject;
    NSLog(@"%@", [self.dataImageObject description]);
    self.dataImage.image = [UIImage imageNamed:strImage];
    NSLog(@"strImage:%@", strImage);
    
}

@end
