//
//  DetailsViewController.m
//  uno
//
//  Created by Angelo Dizon on 11/4/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//
#import "DetailsViewController.h"

@interface DetailsViewController ()
@end

@implementation DetailsViewController

@synthesize recipeName;
@synthesize imageFile;
@synthesize productImage;

- (void)viewDidLoad {
    NSString *imageFilename = [NSString stringWithFormat:@"%@", imageFile];

    NSLog(@"RECIPE: %@ and %@", recipeName, imageFilename);
    UIImage *image = [[UIImage alloc] init];
    image = [UIImage imageNamed:imageFilename];
                      //initWithImage:[UIImage imageNamed:imageFilename]];
    productImage.image = image;

    [productImage setImage:[UIImage imageNamed:imageFilename]];
    [self.view addSubview: productImage];
    [self.view bringSubviewToFront: productImage];
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
