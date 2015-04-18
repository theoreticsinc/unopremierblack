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

@implementation SecondViewController {
    NSString *btnType;
    NSArray *products;
    NSArray *productsIcons;
    NSArray *productsImages;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    products = [NSArray arrayWithObjects:@"Nutrifab", @"Procardio", @"Sante8Berries", @"LeJeune", nil];
    productsIcons = [NSArray arrayWithObjects:@"Nutrifab.png", @"procardio.png", @"sante8berries.png", @"lejeune.png", nil];
    productsImages = [NSArray arrayWithObjects:@"prod_nutrifab.jpg", @"prod_procardio.jpg", @"prod_sante8berries.jpg", @"prod_lejeune.jpg", nil];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"unopremierBG.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNutrifab:(id)sender {
    btnType = @"gotoNutrifab";
    [self performSegueWithIdentifier:@"gotoProductDetails" sender:self];
}

- (IBAction)btnProcardio:(id)sender {
    btnType = @"gotoProcardio";
    [self performSegueWithIdentifier:@"gotoProductDetails" sender:self];
}

- (IBAction)btnSanteBerries:(id)sender {
    btnType = @"gotoSanteBerries";
    [self performSegueWithIdentifier:@"gotoProductDetails" sender:self];
}

- (IBAction)btnLeJeune:(id)sender {
    btnType = @"gotoLeJeune";
    [self performSegueWithIdentifier:@"gotoProductDetails" sender:self];
}


- (IBAction)btnWatchAVP:(id)sender {
    NSURL *url = [ [ NSURL alloc ] initWithString: @"https://www.youtube.com/watch?v=WEJigpOFlGE" ];
    
    [[UIApplication sharedApplication] openURL:url];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog (@"BTN TYPE:%@", btnType);
    if ([btnType isEqualToString:@"gotoNutrifab"]) {
        NSString *youtubelink = [NSString stringWithFormat:@"youtube_%@", [products objectAtIndex:0]];
        NSString *scilink = [NSString stringWithFormat:@"science_%@", [products objectAtIndex:0]];
        NSString *testilink = [NSString stringWithFormat:@"testi_%@", [products objectAtIndex:0]];
        NSString *desclink = [NSString stringWithFormat:@"desc_%@", [products objectAtIndex:0]];
        
        DetailsViewController *destViewController = segue.destinationViewController;
        
        destViewController.recipeName = NSLocalizedString(desclink, nil);
        destViewController.youtube_link = NSLocalizedString(youtubelink, nil);
        destViewController.science_link = NSLocalizedString(scilink, nil);
        destViewController.testimonial_link = NSLocalizedString(testilink, nil);
        NSLog(@"YOUTUBE%@", [productsImages objectAtIndex:0]);
        destViewController.imageFile = [productsImages objectAtIndex:0];
    }
    else if ([btnType isEqualToString:@"gotoProcardio"]) {
        NSString *youtubelink = [NSString stringWithFormat:@"youtube_%@", [products objectAtIndex:1]];
        NSString *scilink = [NSString stringWithFormat:@"science_%@", [products objectAtIndex:1]];
        NSString *testilink = [NSString stringWithFormat:@"testi_%@", [products objectAtIndex:1]];
        NSString *desclink = [NSString stringWithFormat:@"desc_%@", [products objectAtIndex:1]];
        
        DetailsViewController *destViewController = segue.destinationViewController;
        
        destViewController.recipeName = NSLocalizedString(desclink, nil);
        destViewController.youtube_link = NSLocalizedString(youtubelink, nil);
        destViewController.science_link = NSLocalizedString(scilink, nil);
        destViewController.testimonial_link = NSLocalizedString(testilink, nil);
        NSLog(@"YOUTUBE%@", [productsImages objectAtIndex:1]);
        destViewController.imageFile = [productsImages objectAtIndex:1];
    }
    else if ([btnType isEqualToString:@"gotoSanteBerries"]) {
        NSString *youtubelink = [NSString stringWithFormat:@"youtube_%@", [products objectAtIndex:2]];
        NSString *scilink = [NSString stringWithFormat:@"science_%@", [products objectAtIndex:2]];
        NSString *testilink = [NSString stringWithFormat:@"testi_%@", [products objectAtIndex:2]];
        NSString *desclink = [NSString stringWithFormat:@"desc_%@", [products objectAtIndex:2]];
        
        DetailsViewController *destViewController = segue.destinationViewController;
        
        destViewController.recipeName = NSLocalizedString(desclink, nil);
        destViewController.youtube_link = NSLocalizedString(youtubelink, nil);
        destViewController.science_link = NSLocalizedString(scilink, nil);
        destViewController.testimonial_link = NSLocalizedString(testilink, nil);
        NSLog(@"YOUTUBE%@", [productsImages objectAtIndex:2]);
        destViewController.imageFile = [productsImages objectAtIndex:2];
    }
    else if ([btnType isEqualToString:@"gotoLeJeune"]) {
        NSString *youtubelink = [NSString stringWithFormat:@"youtube_%@", [products objectAtIndex:3]];
        NSString *scilink = [NSString stringWithFormat:@"science_%@", [products objectAtIndex:3]];
        NSString *testilink = [NSString stringWithFormat:@"testi_%@", [products objectAtIndex:3]];
        NSString *desclink = [NSString stringWithFormat:@"desc_%@", [products objectAtIndex:3]];
        
        DetailsViewController *destViewController = segue.destinationViewController;
        
        destViewController.recipeName = NSLocalizedString(desclink, nil);
        destViewController.youtube_link = NSLocalizedString(youtubelink, nil);
        destViewController.science_link = NSLocalizedString(scilink, nil);
        destViewController.testimonial_link = NSLocalizedString(testilink, nil);
        NSLog(@"YOUTUBE%@", [productsImages objectAtIndex:3]);
        destViewController.imageFile = [productsImages objectAtIndex:3];
    }
}


@end
