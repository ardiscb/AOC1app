//
//  ViewController.m
//  AOC1P2app
//
//  Created by Courtney Ardis on 1/16/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//
//  AOC1 1301 Project 2

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Change background to purple
    self.view.backgroundColor = [UIColor purpleColor];

    //Create bookTitleLabel
    bookTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 30.f)];
    //Check to see whether bookTitleLabel is not nil
    if (bookTitleLabel != nil)
    {
        //If not nil, add centered aligned text
        bookTitleLabel.text = @"The Elric Saga Part 2";
        bookTitleLabel.textAlignment = NSTextAlignmentCenter;
        bookTitleLabel.textColor = [UIColor blackColor];
    }
    //Attach bookTitleLabel to ViewController
    [self.view addSubview:bookTitleLabel];
    
    
    //Create authorLabel
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 50.0f, 100.0f, 20.0f)];
    //Check to see whether authorLabel is not nil
    if (authorLabel != nil)
    {
        //If not nil, add right aligned justified "Author:"
        authorLabel.text = @"Author:";
        authorLabel.textAlignment = NSTextAlignmentRight;
        authorLabel.backgroundColor = [UIColor lightGrayColor];
        authorLabel.textColor = [UIColor redColor];
    }
    //Attach authorLabel to ViewController
    [self.view addSubview:authorLabel];
    
    //Create authorLabelB
    authorLabelB = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 50.0f, 200.0f, 20.0f)];
    //Check to see whether authorLabelB is not nil
    if (authorLabelB != nil)
    {
        //If not nil, add left aligned justified author of book text
        authorLabelB.text = @"Michael Moorcock";
        authorLabelB.backgroundColor = [UIColor yellowColor];
        authorLabelB.textColor = [UIColor colorWithRed:0.321 green:0.677 blue:0.257 alpha:1];
    }
    //Attach authorLabelB to ViewController
    [self.view addSubview:authorLabelB];
    
    //Create publishedLabel
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 80.0f, 100.0f, 20.0f)];
    //Check to see whether publishedLabel is not nil
    if (publishedLabel != nil)
    {
        //If not nil, add right aligned justified "Publisher:"
        publishedLabel.text = @"Published:";
        publishedLabel.textAlignment = NSTextAlignmentRight;
        publishedLabel.backgroundColor = [UIColor magentaColor];
        publishedLabel.textColor = [UIColor colorWithRed:0.151 green:0.141 blue:0.512 alpha:1];
        
    }
    //Attach publishedLabel to ViewController
    [self.view addSubview:publishedLabel];
    
    //Create publishedLabelB
    publishedLabelB = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 80.0f, 200.0f, 20.0f)];
    //Check to see whether publishedLabelB is not nil
    if(publishedLabelB != nil)
    {
        //If not nil, add left aligned justified date of publication text
        publishedLabelB.text = @"January 1984";
        publishedLabelB.textAlignment = NSTextAlignmentLeft;
        publishedLabelB.backgroundColor = [UIColor orangeColor];
        publishedLabelB.textColor = [UIColor greenColor];

    }
    //Attach publishedLabel B to ViewController
    [self.view addSubview:publishedLabelB];
    
    //Create summaryLabel
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 110.0f, 100.0f, 20.0f)];
    //Check to see whether summaryLabel is no nil
    if(summaryLabel != nil)
    {
        //If not nil, add left aligned justified "Summary:"
        summaryLabel.text = @"Summary:";
        summaryLabel.textAlignment = NSTextAlignmentLeft;
        summaryLabel.backgroundColor = [UIColor colorWithRed:0.231 green:0.322 blue:0.462 alpha:1];
        summaryLabel.textColor = [UIColor brownColor];
    }
    //Attach summaryLabel to ViewController
    [self.view addSubview:summaryLabel];
    
    //Create summaryLabelB
    summaryLabelB = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 140.0f, 300.0f, 130.0f)];
    //Check to see whether summaryLabelB is not nil
    if(summaryLabelB != nil)
    {
        //If not nil, add center aligned text spanning multiple lines
        summaryLabelB.text = @"The tale of a banished albino prince as he travels the world with his soul-stealing sword seeking vengenance on those who caused his downfall. His quest eventually leads to his own death and the end of the world.";
        summaryLabelB.textAlignment = NSTextAlignmentCenter;
        summaryLabelB.backgroundColor = [UIColor blueColor];
        summaryLabelB.textColor = [UIColor whiteColor];
        summaryLabelB.numberOfLines = 6;
    }
    //Attach summaryLabelB to ViewController
    [self.view addSubview:summaryLabelB];
    
    
    //Create 5 NSStrings
    NSString *bookItem1 = @"Prince";
    NSString *bookItem2 = @"sword";
    NSString *bookItem3 = @"sidekick";
    NSString *bookItem4 = @"dragons";
    NSString *bookItem5 = @"a ruby throne";
    
    //Create NSArray of 5 items
    NSArray *bookItemsArray = [[NSArray alloc] initWithObjects:bookItem1, bookItem2, bookItem3, bookItem4, bookItem5, nil];
    
    //Create NSMutableString
    NSMutableString *itemMutableString = [[NSMutableString alloc] init];
    
    //Loop through itemMutableString
    for (int i=0; i<5; i++){
        [itemMutableString appendString:[bookItemsArray objectAtIndex:i]];
        //Add commas between the NSArray
        if (i<3)
        {
            [itemMutableString appendString:@", "];
        }else if (i == 3)
        {
            [itemMutableString appendString:@", and "];
        }else
        {
            [itemMutableString appendString:@"."];
        }
    }
    
    //Create listOfItemsLabel
    listOfItemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 280.0f, 100.0f, 20.0f)];
    //Check to see whether summaryLabelB is not nil
    if(listOfItemsLabel != nil)
    {
        //If not nil, add left aligned text "List of Items:"
        listOfItemsLabel.text = @"List of Items:";
        listOfItemsLabel.textAlignment = NSTextAlignmentLeft;
        listOfItemsLabel.backgroundColor = [UIColor cyanColor];
        listOfItemsLabel.textColor = [UIColor colorWithRed:0.831 green:0.081 blue:0.301 alpha:1];
    }
    //Attach listOfItems to ViewController
    [self.view addSubview:listOfItemsLabel];
    
    //Create listOfItemsLabelB
    listOfItemsLabelB = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 310.0f, 300.0f, 50.0f)];
    //Check to see whether summaryLabelB is not nil
    if(listOfItemsLabelB != nil)
    {
        //If not nil, add center aligned list of items from the mutable array
        listOfItemsLabelB.text = itemMutableString;
        listOfItemsLabelB.textAlignment = NSTextAlignmentCenter;
        listOfItemsLabelB.backgroundColor = [UIColor colorWithRed:0.123 green:0.497 blue:0.251 alpha:1];
        listOfItemsLabelB.numberOfLines = 2;
        listOfItemsLabelB.textColor = [UIColor darkGrayColor];
    }
    //Attach listOfItemsB to ViewController
    [self.view addSubview:listOfItemsLabelB];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
