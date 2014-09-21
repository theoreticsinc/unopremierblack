//
//  TenWays1ViewController.m
//  uno
//
//  Created by Angelo Dizon on 9/20/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "TenWays1ViewController.h"

@interface TenWays1ViewController ()
@property (nonatomic, strong) IBOutlet UISwipeGestureRecognizer *swipe10LeftRecognizer;
@property (nonatomic, strong) IBOutlet UISwipeGestureRecognizer *swipe10RightRecognizer;
@property (weak, nonatomic) IBOutlet UIImageView *tapImage;
@end

@implementation TenWays1ViewController

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
    self.navigationItem.title = @"Ten Ways to Earn";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                   style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = backButton;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    
    // Disallow recognition of tap gestures in the segmented control.
    NSLog(@"touch gesture");
    //if (gestureRecognizer == self.tapRecognizer) {
    //    return NO;
    //}
    return YES;
}


#pragma mark -
#pragma mark Responding to gestures


/*
 In response to a swipe gesture, show the image view appropriately then move the image view in the direction of the swipe as it fades out.
 */
- (IBAction)showGestureForSwipeLeftRecognizer:(UISwipeGestureRecognizer *)recognizer {
    
	CGPoint location = [recognizer locationInView:self.view];
	[self drawImageForLeftGestureRecognizer:recognizer atPoint:location];
    
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
- (IBAction)showGestureForSwipeRightRecognizer:(UISwipeGestureRecognizer *)recognizer {
    
	CGPoint location = [recognizer locationInView:self.view];
	[self drawImageForRightGestureRecognizer:recognizer atPoint:location];
    
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



#pragma mark -
#pragma mark Drawing the image view

/*
 Set the appropriate image for the image view for the given gesture recognizer, move the image view to the given point, then dispay the image view by setting its alpha to 1.0.
 */
- (void)drawImageForLeftGestureRecognizer:(UIGestureRecognizer *)recognizer atPoint:(CGPoint)centerPoint {
    
	NSString *imageName;
    NSLog(@"drawing Image");
    
    if ([recognizer isMemberOfClass:[UITapGestureRecognizer class]]) {
        imageName = @"tap.png";
    }
    else if ([recognizer isMemberOfClass:[UIRotationGestureRecognizer class]]) {
        imageName = @"rotation.png";
    }
    else if ([recognizer isMemberOfClass:[UISwipeGestureRecognizer class]]) {
        imageName = @"swipeleft.png";
    }
    
	self.tapImage.image = [UIImage imageNamed:imageName];
	self.tapImage.center = centerPoint;
	self.tapImage.alpha = 1.0;
    
}
- (void)drawImageForRightGestureRecognizer:(UIGestureRecognizer *)recognizer atPoint:(CGPoint)centerPoint {
    
	NSString *imageName;
    NSLog(@"drawing Image");
    
    if ([recognizer isMemberOfClass:[UITapGestureRecognizer class]]) {
        imageName = @"tap.png";
    }
    else if ([recognizer isMemberOfClass:[UIRotationGestureRecognizer class]]) {
        imageName = @"rotation.png";
    }
    else if ([recognizer isMemberOfClass:[UISwipeGestureRecognizer class]]) {
        imageName = @"swiperight.png";
    }
    
	self.tapImage.image = [UIImage imageNamed:imageName];
	self.tapImage.center = centerPoint;
	self.tapImage.alpha = 1.0;
    
}

-(void)back {
    NSLog(@"Back button Pressed");
    //[self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation
                                            duration:duration];
    
    //Setup the views for a given orientation - sets the frames and images appropriately
    //[self  setupViewsForOrientation:toInterfaceOrientation];
}

@end
