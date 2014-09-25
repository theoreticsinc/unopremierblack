//
//  ModelController.m
//  PageV2
//
//  Created by Angelo Dizon on 9/23/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import "ModelController.h"

#import "DataViewController.h"

/*
 A controller object that manages a simple model -- a collection of month names.
 
 The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
 It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.
 
 There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
 */

@interface ModelController()
@property (readonly, strong, nonatomic) NSArray *pageData;
@end

@implementation ModelController

- (id)init
{
    self = [super init];
    if (self) {
        // Create the data model.
        //NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        //_pageData = [[dateFormatter monthSymbols] copy];
        _pageData = [NSArray arrayWithObjects:@"x001.jpg", @"x002.jpg", @"x003.jpg", @"x004.jpg", @"x005.jpg", @"x006.jpg", @"x007.jpg", @"x008.jpg", @"x009.jpg", @"x010.jpg", @"x011.jpg", @"x012.jpg", @"x013.jpg", @"x014.jpg", @"x015.jpg", @"x016.jpg", @"x017.jpg", @"x018.jpg", @"x019.jpg", @"x020.jpg", @"x021.jpg", @"x022.jpg", @"x023.jpg", @"x024.jpg", @"x025.jpg", @"x026.jpg", @"x027.jpg", @"x028.jpg", nil];
    }
    return self;
}

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard
{   
    // Return the data view controller for the given index.
    if (([self.pageData count] == 0) || (index >= [self.pageData count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    DataViewController *dataViewController = [storyboard instantiateViewControllerWithIdentifier:@"DataViewController"];
    dataViewController.dataObject = self.pageData[index];
    dataViewController.dataImageObject = self.pageData[index];
    
    //NSLog(@"PAGE DATA**** and %@",  dataViewController.dataImageObject);
    return dataViewController;
}

- (NSUInteger)indexOfViewController:(DataViewController *)viewController
{   
     // Return the index of the given data view controller.
     // For simplicity, this implementation uses a static array of model objects and the view controller stores the model object; you can therefore use the model object to identify the index.
    //NSLog(@"PAGE DATAimageObject**** and %@",  viewController.dataImageObject);
    
    return [self.pageData indexOfObject:viewController.dataObject];
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DataViewController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DataViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    
    //imageView.image = [UIImage imageNamed:[_pageData objectAtIndex:indexPath.row]];
    
    if (index == [self.pageData count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

@end
