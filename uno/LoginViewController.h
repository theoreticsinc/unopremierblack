//
//  LoginViewController.h
//  Unopremier
//
//  Created by Angelo Dizon on 3/20/15.
//  Copyright (c) 2015 Unlimited Network of Opportunities. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <NSXMLParserDelegate>
@property (weak, nonatomic) IBOutlet UITextField *uname;
@property (weak, nonatomic) IBOutlet UITextField *pword;
@property (weak, nonatomic) IBOutlet UITextView *result;
@property (weak, nonatomic) IBOutlet UITextView *wsResults;

@property (retain, nonatomic) NSMutableData *webData;
@property (retain, nonatomic) NSMutableString *nodeContent;

@end
