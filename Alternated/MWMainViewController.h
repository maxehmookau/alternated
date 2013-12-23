//
//  MWMainViewController.h
//  Alternated
//
//  Created by Max Woolf on 23/12/2013.
//  Copyright (c) 2013 MaxWoolf. All rights reserved.
//

#import "MWFlipsideViewController.h"

@interface MWMainViewController : UIViewController <MWFlipsideViewControllerDelegate>


@property (nonatomic, strong) IBOutlet UILabel *questionLbl;
@property (nonatomic, strong) IBOutlet UILabel *valueLbl;
@end
