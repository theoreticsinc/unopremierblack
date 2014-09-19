//
//  BeautyProductsTableViewController.m
//  uno
//
//  Created by Angelo Dizon on 9/18/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "BeautyProductsTableViewController.h"

@interface BeautyProductsTableViewController ()
@end

@implementation BeautyProductsTableViewController {
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
    products = [NSArray arrayWithObjects:@"Glutathione", @"Kojic Soap",@"Body Works",@"Glutathione Soap",@"Health Hair Treats",@"Magic Cream", @"Natura White", @"Nutri Hair", @"Thanakha", nil];
    productsImages = [NSArray arrayWithObjects:@"gluthathioneLight.png", @"kojic.png",@"bodyworks.png",@"gluthathionesoap.png",@"hairtreats.png",@"magic_cream.png", @"naturaWhite.png", @"nutrihair.png", @"thanakha.png", nil];
    self.navigationItem.title = @"UNO Beauty Products";
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
    static NSString *BeautyProductsTableIdentifier = @"BeautyProductsTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:BeautyProductsTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:BeautyProductsTableIdentifier];
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
