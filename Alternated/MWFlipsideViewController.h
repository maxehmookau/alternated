//
//  MWFlipsideViewController.h
//  Alternated
//
//  Created by Max Woolf on 23/12/2013.
//  Copyright (c) 2013 MaxWoolf. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MWFlipsideViewController;

@protocol MWFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(MWFlipsideViewController *)controller;
@end

@interface MWFlipsideViewController : UIViewController <UITextFieldDelegate, UIScrollViewDelegate>

@property (weak, nonatomic) id <MWFlipsideViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *questionFld;
@property (strong, nonatomic) IBOutlet UITextField *evenFld;
@property (strong, nonatomic) IBOutlet UITextField *oddFld;
@property (strong, nonatomic) IBOutlet UIScrollView *scroller;

- (IBAction)done:(id)sender;

- (IBAction)didChangeQuestionValue:(id)sender;
- (IBAction)didChangeOddDaysValue:(id)sender;
- (IBAction)didChangeEvenDaysValue:(id)sender;

@end
