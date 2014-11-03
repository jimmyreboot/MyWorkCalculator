//
//  NewEntryViewController.m
//  MyWorkCalculator
//
//  Created by Jimmy Flores on 2014-10-23.
//  Copyright (c) 2014 JimmyFlores. All rights reserved.
//

#import "NewEntryViewController.h"
#import "CodeCollectionViewController.h"

@interface NewEntryViewController ()

@end

@implementation NewEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //CodeData *codeData = [[CodeData alloc] init];
    
    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
    
    [formater setDateFormat:@"MMM d, yyyy  h:mm a"];
    
    _todaysDate = [formater stringFromDate:[NSDate date]];
    _dateLabel.text = _todaysDate;
    
    //Listen for a notification
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationRecieved:)
                                                 name:@"codeSelectionChanged" object:nil];
    
    //UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    //CodeCollectionViewController
    //CodeCollectionViewController *codeCollectionViewController = [[CodeCollectionViewController alloc] init];
    
    //[self addChildViewController:codeCollectionViewController];
    
        
}

//get notification and data
-(void)notificationRecieved:(NSNotification *)notification{
    NSDictionary *temp = [notification userInfo];
    //NSLog(@"%@", [temp objectForKey:@"school"]);
    //self.myLabel.text = [temp objectForKey:@"school"];
    _selectedCode = [temp allValues];
    
    
    
    
    NSLog(@"It works");
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

@end
