//
//  HealthyDrinksTableViewController.m
//  uno
//
//  Created by Angelo Dizon on 9/18/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "HealthyDrinksTableViewController.h"

@interface HealthyDrinksTableViewController ()
@end

@implementation HealthyDrinksTableViewController {
    NSArray *products;
    NSArray *productsImages;
    
}

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
    products = [NSArray arrayWithObjects:@"8-in-1 Coffee", @"8-in-1 Coffee Lite",@"Prime Juice",@"1st Health Acai Berry Juice",@"Cappuccino",@"Choco 8", @"Corn Coffee", nil];
    productsImages = [NSArray arrayWithObjects:@"8in1coffee.png", @"8in1coffeeLite.png",@"primejuice.png",@"acaiberry.png",@"cappucino.png",@"choco8.png", @"cornCoffee.png", nil];
    
    self.navigationItem.title = @"UNO Healthy Drinks";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                   style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = backButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *HealthyDrinksTableIdentifier = @"HealthyDrinksTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:HealthyDrinksTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:HealthyDrinksTableIdentifier];
    }
    
    cell.textLabel.text = [products objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[productsImages objectAtIndex:indexPath.row]];
    
    return cell;
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

-(void)back {
    NSLog(@"Back button Pressed");
    //[self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
