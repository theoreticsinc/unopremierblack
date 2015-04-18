//
//  HomeViewController.m
//  Unopremier
//
//  Created by Angelo Dizon on 3/15/15.
//  Copyright (c) 2015 Unlimited Network of Opportunities. All rights reserved.
//

#import "HomeViewController.h"
#import "YouTubeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController {

    NSString *btnType;
    NSArray *videos;
    
}

- (void)viewDidLoad {
    videos = [NSArray arrayWithObjects:@"Video1", @"Video2", @"Video3", nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnVid1:(id)sender {
    btnType = @"gotoVid1";
    [self performSegueWithIdentifier:@"playVideo" sender:self];
}

- (IBAction)btnVid2:(id)sender {
    btnType = @"gotoVid2";
    [self performSegueWithIdentifier:@"playVideo" sender:self];
}

- (IBAction)btnVid3:(id)sender {
    btnType = @"gotoVid3";
    [self performSegueWithIdentifier:@"playVideo" sender:self];
}

- (IBAction)btnLogin:(id)sender {
    btnType = @"gotoLogin";
    [self performSegueWithIdentifier:@"gotoLogin" sender:self];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog (@"BTN TYPE:%@", btnType);
    YouTubeViewController *youTubeViewController = segue.destinationViewController;
    NSString *youtubelink;
    
    if ([btnType isEqualToString:@"gotoVid1"]) {
        youtubelink = [NSString stringWithFormat:@"%@", [videos objectAtIndex:0]];
        youTubeViewController.youtube_link = NSLocalizedString(youtubelink, nil);
    }
    else if ([btnType isEqualToString:@"gotoVid2"]) {
        youtubelink = [NSString stringWithFormat:@"%@", [videos objectAtIndex:1]];
        youTubeViewController.youtube_link = NSLocalizedString(youtubelink, nil);
    }
    else if ([btnType isEqualToString:@"gotoVid3"]) {
        youtubelink = [NSString stringWithFormat:@"%@", [videos objectAtIndex:2]];
        youTubeViewController.youtube_link = NSLocalizedString(youtubelink, nil);
    }
    
}


@end
