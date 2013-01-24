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
    //Convert result into NSString
    NSString *convertNumber = [[NSString alloc] initWithFormat:@"The number is %d", result];
    //displays the result of adding two numbers in an alert
    [self displayAlertWithString:convertNumber];
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
        NSString *trueStatment = [[NSString alloc] initWithFormat:@"The numbers %d and %d are equal.", thisInt, thatInt];
        //display compare = true alert
        [self displayAlertWithString:trueStatment];
        NSLog(@"Yes");
        return YES;
        //If they are not equal, logs "NO" and returns NO
    }else
    {
        NSString *falseStatment = [[NSString alloc] initWithFormat:@"The numbers %d and %d are not equal.", thisInt, thatInt];
        //display compare = false alert
        [self displayAlertWithString:falseStatment];
        NSLog(@"No");
        return NO;
    }
}
//Append function: takes two NSStrings and returns a new NSString containing the appended strings using an NSMutableString and the Append method
- (void)append:(NSString*)thisString thatString:(NSString*)thatString
{
    //Append strings using NSMutableString
    NSMutableString *mutableAppendedString = [[NSMutableString alloc] init];
    [mutableAppendedString appendString:thisString];
    [mutableAppendedString appendString:thatString];
    //Log appended strings
    NSLog(@"%@", mutableAppendedString);
    //Displays append alert
    [self displayAlertWithString:mutableAppendedString];
}
//displayAlertWithString function - takes an NSString as the parameter
- (void)displayAlertWithString:(NSString*)string
{
    //creates an alert view
    UIAlertView *displayStringAlert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (displayStringAlert != nil)
    {
        [displayStringAlert show];
    }
}

- (void)viewDidLoad
{
    //Sets parameters
    [self add:4 thatInt:2];
    [self compare: 3 thatInt:3];
    [self append:@"Append this string to " thatString:@"that string."];
    
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
