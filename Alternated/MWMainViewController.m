//
//  MWMainViewController.m
//  Alternated
//
//  Created by Max Woolf on 23/12/2013.
//  Copyright (c) 2013 MaxWoolf. All rights reserved.
//

#import "MWMainViewController.h"

@interface MWMainViewController ()

@end

@implementation MWMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [_questionLbl setText:[[NSUserDefaults standardUserDefaults] valueForKey:@"question"]];
    NSDate *date = [[NSUserDefaults standardUserDefaults] valueForKey:@"date"];
    int days = ([[NSDate new] timeIntervalSinceDate:date] / (60 * 60 * 24));
    NSLog(@"%d", days % 2);
    if (days % 2) {
        [_valueLbl setText:[[NSUserDefaults standardUserDefaults] valueForKey:@"even"]];
    } else {
        [_valueLbl setText:[[NSUserDefaults standardUserDefaults] valueForKey:@"odd"]];
    }
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(MWFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
