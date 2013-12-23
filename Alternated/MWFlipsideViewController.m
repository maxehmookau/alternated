//
//  MWFlipsideViewController.m
//  Alternated
//
//  Created by Max Woolf on 23/12/2013.
//  Copyright (c) 2013 MaxWoolf. All rights reserved.
//

#import "MWFlipsideViewController.h"

@interface MWFlipsideViewController ()

@end

@implementation MWFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [_scroller setScrollEnabled:YES];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    if (![[[NSUserDefaults standardUserDefaults] valueForKey:@"question"] isEqualToString:@""]) {
        [_questionFld setText:[[NSUserDefaults standardUserDefaults] valueForKey:@"question"]];
    }
    
    if (![[[NSUserDefaults standardUserDefaults] valueForKey:@"even"] isEqualToString:@""]) {
        [_evenFld setText:[[NSUserDefaults standardUserDefaults] valueForKey:@"even"]];
    }
    
    if (![[[NSUserDefaults standardUserDefaults] valueForKey:@"odd"] isEqualToString:@""]) {
        [_oddFld setText:[[NSUserDefaults standardUserDefaults] valueForKey:@"odd"]];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [_scroller scrollRectToVisible:CGRectMake(0, 500, 300, 300) animated:YES];
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setValue:[NSDate date] forKey:@"date"];
    [self.delegate flipsideViewControllerDidFinish:self];
}

- (void)didChangeQuestionValue:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setValue:[(UITextField *)sender text] forKey:@"question"];
}

- (void)didChangeEvenDaysValue:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setValue:[(UITextField *)sender text] forKey:@"even"];
}

- (void)didChangeOddDaysValue:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setValue:[(UITextField *)sender text] forKey:@"odd"];
}
@end
