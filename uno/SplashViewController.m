//
//  SplashViewController.m
//  uno
//
//  Created by Angelo Dizon on 9/12/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "SplashViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface SplashViewController ()

@end

@implementation SplashViewController

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
    NSURL *url2 = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"unosplash" ofType:@"mp4"]];
    MPMoviePlayerViewController *playercontroller = [[MPMoviePlayerViewController alloc]
                                                     initWithContentURL:url2];
    [self presentMoviePlayerViewControllerAnimated:playercontroller];
    playercontroller.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    playercontroller.moviePlayer.fullscreen = YES;
    playercontroller.moviePlayer.controlStyle = MPMovieControlStyleNone;
    [playercontroller.moviePlayer play];
    [[NSNotificationCenter defaultCenter]        addObserver:self           selector:@selector(movieFinishedCallback:)               name:MPMoviePlayerPlaybackDidFinishNotification             object:[playercontroller moviePlayer]];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void) movieFinishedCallback:(NSNotification*) aNotification {
    MPMoviePlayerController *player = [aNotification object];
    [[NSNotificationCenter defaultCenter]        removeObserver:self                  name:MPMoviePlayerPlaybackDidFinishNotification                object:player];
    [self performSegueWithIdentifier:@"afterSplash" sender:self];
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

@end
