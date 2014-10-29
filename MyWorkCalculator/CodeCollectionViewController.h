//
//  CodeCollectionViewController.h
//  MyWorkCalculator
//
//  Created by Jimmy Flores on 2014-10-26.
//  Copyright (c) 2014 JimmyFlores. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CodeData.h"

@interface CodeCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSArray *codeArray;

@end
