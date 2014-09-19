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
@property (nonatomic, strong) IBOutlet UITapGestureRecognizer *tapRecognizer;
@property (nonatomic, strong) IBOutlet UISwipeGestureRecognizer *swipeLeftRecognizer;
@property (weak, nonatomic) IBOutlet UIImageView *unoImage;

@property (weak, nonatomic) IBOutlet UIImageView *tapImage;


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
    NSLog(@"Splash loaded");
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


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    
    // Disallow recognition of tap gestures in the segmented control.
    NSLog(@"touch gesture");
    if (gestureRecognizer == self.tapRecognizer) {
        return NO;
    }
    return YES;
}


#pragma mark -
#pragma mark Responding to gestures

/*
 In response to a tap gesture, show the image view appropriately then make it fade out in place.
 */
- (IBAction)showGestureForTapRecognizer:(UITapGestureRecognizer *)recognizer {
	
	CGPoint location = [recognizer locationInView:self.view];
	[self drawImageForGestureRecognizer:recognizer atPoint:location];
	
	[UIView animateWithDuration:2.0 animations:^{
        self.tapImage.alpha = 0.0;
    }];
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
 In response to a swipe gesture, show the image view appropriately then move the image view in the direction of the swipe as it fades out.
 */
- (IBAction)showGestureForSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer {
    
	CGPoint location = [recognizer locationInView:self.view];
	[self drawImageForGestureRecognizer:recognizer atPoint:location];
    
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        location.x -= 220.0;
    }
    else {
        location.x += 220.0;
    }
    
	[UIView animateWithDuration:0.9 animations:^{
        self.tapImage.alpha = 0.0;
        self.tapImage.center = location;
    }];
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

/*
 In response to a rotation gesture, show the image view at the rotation given by the recognizer. At the end of the gesture, make the image fade out in place while rotating back to horizontal.
 */
- (IBAction)showGestureForRotationRecognizer:(UIRotationGestureRecognizer *)recognizer {
	
	CGPoint location = [recognizer locationInView:self.view];
    
    CGAffineTransform transform = CGAffineTransformMakeRotation([recognizer rotation]);
    self.tapImage.transform = transform;
	[self drawImageForGestureRecognizer:recognizer atPoint:location];
    
    /*
     If the gesture has ended or is cancelled, begin the animation back to horizontal and fade out.
     */
    if (([recognizer state] == UIGestureRecognizerStateEnded) || ([recognizer state] == UIGestureRecognizerStateCancelled)) {
        [UIView animateWithDuration:0.5 animations:^{
            self.tapImage.alpha = 0.0;
            self.tapImage.transform = CGAffineTransformIdentity;
        }];
    }
}


#pragma mark -
#pragma mark Drawing the image view

/*
 Set the appropriate image for the image view for the given gesture recognizer, move the image view to the given point, then dispay the image view by setting its alpha to 1.0.
 */
- (void)drawImageForGestureRecognizer:(UIGestureRecognizer *)recognizer atPoint:(CGPoint)centerPoint {
    
	NSString *imageName;
    NSLog(@"drawing Image");
    
    if ([recognizer isMemberOfClass:[UITapGestureRecognizer class]]) {
        imageName = @"tap.png";
    }
    else if ([recognizer isMemberOfClass:[UIRotationGestureRecognizer class]]) {
        imageName = @"rotation.png";
    }
    else if ([recognizer isMemberOfClass:[UISwipeGestureRecognizer class]]) {
        imageName = @"swipe.png";
    }
    
	self.tapImage.image = [UIImage imageNamed:imageName];
	self.tapImage.center = centerPoint;
	self.tapImage.alpha = 1.0;
    [self performSegueWithIdentifier:@"afterSplash" sender:self];

}


@end
