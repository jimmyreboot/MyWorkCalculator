//
//  NewEntryViewController.h
//  MyWorkCalculator
//
//  Created by Jimmy Flores on 2014-10-23.
//  Copyright (c) 2014 JimmyFlores. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CodeData.h"

@interface NewEntryViewController : UIViewController

@property(nonatomic, weak) IBOutlet UILabel *dateLabel;
@property(nonatomic, weak) NSString *todaysDate;

@end
