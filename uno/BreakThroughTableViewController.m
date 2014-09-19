//
//  BreakThroughTableViewController.m
//  uno
//
//  Created by Angelo Dizon on 9/18/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "BreakThroughTableViewController.h"

@interface BreakThroughTableViewController ()
@end

@implementation BreakThroughTableViewController {
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
    products = [NSArray arrayWithObjects:@"Biomagnetic Bracelet", @"Pendant", @"Scare Away",  nil];
    productsImages = [NSArray arrayWithObjects:@"bracelet.png", @"scalarPendant.png",@"scareAway.png",  nil];
    self.navigationItem.title = @"UNO Breakthrough Products";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                   style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = backButton;
    // Do any additional setup after loading the view.
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
    static NSString *BreakThroughTableIdentifier = @"BreakThroughTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:BreakThroughTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:BreakThroughTableIdentifier];
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
