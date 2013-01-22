//
//  ViewController.m
//  AOC1P3
//
//  Created by Courtney Ardis on 1/21/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//
//  AOC1 1301 Project 3

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



//Add function: Takes two ints, adds them together, returns result
- (int)add:(NSInteger)thisInt thatInt:(NSInteger)thatInt
{
    //Add thisInt to thatInt
    int result = thisInt + thatInt;
    NSLog(@"%d + %d = %d", thisInt, thatInt, result);    
    //Return result
    return result;
}

//Compare function: takes two ints, returns YES or NO based on whether the values are equal
-(BOOL)compare:(NSInteger)thisInt thatInt:(NSInteger)thatInt
{
    //Prints values of ints, asking if they are equal
    NSLog(@"Do %d and %d equal each other.", thisInt, thatInt);
    //If they are equal, logs "YES" and returns YES
    if(thisInt == thatInt)
    {
        NSLog(@"Yes");
        return YES;
    //If they are not equal, logs "NO" and returns NO
    }else
    {
        NSLog(@"No");
        return NO;
    }
}

- (void)viewDidLoad
{
    //Sets parameters
    [self add:4 thatInt:2];
    [self compare: 3 thatInt:3];
    
    //Example video code
    
    //[self printDebugInfo:@"this is a debug string" numLines:5];
    
    //END example vidoe code
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Example video code
//Two parameter function
//- (void)printDebugInfo:(NSString*)debugString numLines:(NSInteger)numLines
//{
//    NSLog(@"%@", debugString);
//}
//- (int)printDebugInfo:(NSString*)debugString numLines:(NSInteger)numLines
//{
//    NSLog(@"%@", debugString);
//    
//    return 4;
//}
//
//- (float)getWidthFromCGRect:(CGRect)rect
//{
//    return rect.size.width;
//}
//
//+ (int)getXValueFromCGRect:(CGRect)rect
//{
//    return (int)rect.origin.x;
//}
//END example video code


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
