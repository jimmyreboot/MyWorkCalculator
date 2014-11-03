//
//  CodeCollectionViewController.m
//  MyWorkCalculator
//
//  Created by Jimmy Flores on 2014-10-26.
//  Copyright (c) 2014 JimmyFlores. All rights reserved.
//

#import "CodeCollectionViewController.h"
#import "CodeCollectionViewCell.h"

@interface CodeCollectionViewController ()

@end

@implementation CodeCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier: reuseIdentifier];
    
    /*[self.collectionView registerClass:[CodeCollectionViewCell class] forCellWithReuseIdentifier: reuseIdentifier]; */
    
    // Do any additional setup after loading the view.
    CodeData *codeData = [[CodeData alloc] init];
    
    _codeArray = codeData.codeArray;
    
    //NSLog(@"%@", [codeData codeArray]);
    
    //NSLog(@"%@", _codeArray);
    NSLog(@"%i", _codeArray.count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //return 0;
    return [_codeArray count];
}

- (CodeCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //CodeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
     CodeCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    
    // Configure the cell
    
    //UILabel *label = (UILabel *) [cell viewWithTag:10];
    
    //UILabel *label = [[UILabel alloc] init] ;
    //label.tag = 10;
    
    //[cell.contentView addSubview:label];
    
    //label.text = [_codeArray objectAtIndex: indexPath.row];
    
    //cell.label.text = [_codeArray objectAtIndex: indexPath.row];
    NSString *codeText = [_codeArray objectAtIndex: indexPath.row];

    NSLog(@"%@", codeText);
    
    cell.label.text = codeText;
    //cell.label.text = [[UIColor whiteColor].CGColor];
    
    //label.textColor = [UIColor greenColor];
    
    [cell.layer setBorderWidth:1.0f];
    [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
    [cell.layer setBackgroundColor:[UIColor whiteColor].CGColor];
    [cell.layer setCornerRadius: 8.0f];
    
    
   // NSLog(@"%@", label.text);
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *theCell = [self.collectionView cellForItemAtIndexPath:indexPath];
    
    //CodeCollectionViewCell *theCell = [self.collectionView cellForItemAtIndexPath:indexPath];

    CodeCollectionViewCell *aCell = (CodeCollectionViewCell *)theCell;
    
    NSLog(@"%@", aCell.label.text);
    
    [_selectedCodesArray addObject: aCell.label.text];
    
    
}

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
