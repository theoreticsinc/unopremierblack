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
    products = [NSArray arrayWithObjects:@"Nutrifab", @"Procardio", @"Sante8Berries", nil];
    productsIcons = [NSArray arrayWithObjects:@"Nutrifab.png", @"procardio.png", @"sante8berries.png", nil];
    productsImages = [NSArray arrayWithObjects:@"prod_nutrifab.jpg", @"prod_procardio.jpg", @"prod_sante8berries.jpg", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNutrifab:(id)sender {
    btnType = @"gotoNutrifab";
    [self performSegueWithIdentifier:@"gotoNutrifab" sender:self];
}

- (IBAction)btnProcardio:(id)sender {
    btnType = @"gotoProcardio";
    [self performSegueWithIdentifier:@"gotoNutrifab" sender:self];
}

- (IBAction)btnSanteBerries:(id)sender {
    btnType = @"gotoSanteBerries";
    [self performSegueWithIdentifier:@"gotoNutrifab" sender:self];
}

- (IBAction)btnFoodSupplement:(id)sender {
    [self performSegueWithIdentifier:@"gotoFoodSupplement" sender:self];
}

- (IBAction)btnHealthyDrinks:(id)sender {
    [self performSegueWithIdentifier:@"gotoHealthyDrinks" sender:self];
}

- (IBAction)btnBeautyProducts:(id)sender {
    [self performSegueWithIdentifier:@"gotoBeautyProducts" sender:self];
}

- (IBAction)btnPersonalCare:(id)sender {
    [self performSegueWithIdentifier:@"gotoPersonalCare" sender:self];
}

- (IBAction)btnHouseholdProducts:(id)sender {
    [self performSegueWithIdentifier:@"gotoHouseholdProducts" sender:self];
}

- (IBAction)btnBreakthrough:(id)sender {
    [self performSegueWithIdentifier:@"gotoBreakthrough" sender:self];
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
}


@end
