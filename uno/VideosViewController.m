//
//  VideosViewController.m
//  uno
//
//  Created by Angelo Dizon on 9/20/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "VideosViewController.h"

@interface VideosViewController ()
- (IBAction)masterBtn:(id)sender;

@end

@implementation VideosViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)masterBtn:(id)sender {
    NSURL *url = [ [ NSURL alloc ] initWithString: @"https://www.youtube.com/watch?v=GgPYUJHZrNg&list=PLC5_bFP2rMB9uKnH9onBi8OAHYQUsvgir" ];
    
    [[UIApplication sharedApplication] openURL:url];
}
@end
