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
//END Practice 6


- (void)viewDidLoad
{
    //Sets parameters
    [self add:4 thatInt:2];
    
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
