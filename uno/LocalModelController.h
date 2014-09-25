//
//  LocalModelController.h
//  PageV2
//
//  Created by Angelo Dizon on 9/23/14.
//  Copyright (c) 2014 Unlimited Network of Opportunities. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LocalDataViewController;

@interface LocalModelController : NSObject <UIPageViewControllerDataSource>

- (LocalDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(LocalDataViewController *)viewController;

@end
