//
//  ViewController.h
//  AOC1P3
//
//  Created by Courtney Ardis on 1/21/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

//declare functions
- (int)add:(NSInteger)thisInt thatInt:(NSInteger)thatInt;
- (void)append:(NSString*)thisString thatString:(NSString*)thatString;
- (BOOL)compare:(NSInteger)thisInt thatInt:(NSInteger)thatInt;
- (void)displayAlertWithString:(NSString*)string;


@end
