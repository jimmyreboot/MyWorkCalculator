//
//  CodeData.m
//  MyWorkCalculator
//
//  Created by Jimmy Flores on 2014-10-23.
//  Copyright (c) 2014 JimmyFlores. All rights reserved.
//

#import "CodeData.h"

@implementation CodeData

-(id)init{
    self = [super init];
    
    _codeArray = [NSArray arrayWithObjects:
                 @"030", @"031", @"040",
                 @"041", @"042", @"023", @"024", @"025", @"026", @"203", @"204", @"574", @"207",
                 @"060", @"061", @"070", @"071", @"050", @"051", @"052", @"055", @"056", @"057", @"225", @"277", @"511", @"650",
                 @"043", @"053",
                 @"271", @"272", @"273", @"274", @"275", @"276", @"270",
                 @"047", @"048", @"241", @"263", @"267",
                 @"600", @"606", @"615", @"620", @"641", @"710", @"780",
                 @"901", @"905", @"950",
                 @"531", @"410", @"551", @"532",
                 @"800", @"810", @"811", @"812", @"553", @"813", @"814",
                 nil];


    //NSLog(@"%@", _codeArray);
    return self;
}

//-(void) codes {
    
//}

/*-(void) setCodeArray:(NSArray *)codeArray{
    
    codeArray = [NSArray arrayWithObjects:
                 @"030", "031", "040",
                 "041", "042", "023", "024", "025", "026", "203", "204", "574", "207",
                 "060", "061", "070", "071", "050", "051", "052" "055", "056", "057", "225", "277", "511", "650",
                 "043", "053",
                 "271", "272", "273", "274", "275", "276" "270",
                 "047", "048", "241", "263", "267",
                 "600", "606", "615", "620", "641", "710", "780",
                 "901", "905", "950"
                 "531", "410", "551", "532",
                 "800", "810", "811", "812", "553", "813", "814",
                 nil];
    NSLog(@"%i", _codeArray.count);
}


-(void) setRateArray:(NSArray *)rateArray{
    
    rateArray = [NSArray arrayWithObjects:
                 @"7.64", "9.64", "7.64",
                 "0.00", "31.80", "20.49", "10.69", "33.84", "13.00", "9.75", "10.69", "7.49", "10.69",
                 "7.64", "9.64", "7.64", "9.64", "7.64", "0.00", "7.64", "7.64", "7.49", "7.49", "7.64", "7.64", "14.54", "8.79",
                 "7.64", "7.64",
                 "7.64", "7.64", "14.54", "7.64", "3.63", "7.64", "2.92",
                 "44.76", "23.00", "8.07", "9.75", "10.69",
                 "45.60", "7.49", "7.64", "16.22", "8.07", "7.64", "17.36",
                 "22.00", "7.64", "8.07",
                 "7.64", "10.90", "8.07", "0.00",
                 "3.50", "0.59", "3.63", "0.59", "5.18", "8.07", "8.07",
                 nil];
}

-(void) setCodesDictionary:(NSDictionary *)codesDictionary{
    
    //_codeArray = [NSArray arrayWithObjects:@"030", "031", "040", nil];
    //_rateArray = [NSArray arrayWithObjects: @"7.64", "9.64", "7.64", nil];
    
    self.codesDictionary = [[NSDictionary alloc] initWithObjects:(NSArray *) self.rateArray forKeys:(NSArray *) self.codeArray];
}

-(NSArray *) getCodeArray{
    return _codeArray;
}*/



@end
