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
        //Error when using NSTextAlignmentJustified or NSTextAlignmentNatural
        //authorLabelB.textAlignment = NSTextAlignmentJustified;
        //[authorLabelB setTextAlignment:NSTextAlignmentJustified];
        authorLabelB.backgroundColor = [UIColor yellowColor];
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
        
    }
    //Attach publishedLabel to ViewController
    [self.view addSubview:publishedLabel];
    
    //Create publishedLabelB
    publishedLabelB = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 80.0f, 200.0f, 20.0f)];
    //Check to see whether publishedLabelB is not nil
    if(publishedLabelB != nil)
    {
        //If not nil, add left aligned justified date of publication text
        publishedLabelB.text = @"1984";
        publishedLabelB.textAlignment = NSTextAlignmentLeft;
        //publishedLabelB.textAlignment = NSTextAlignmentJustified;
        publishedLabelB.backgroundColor = [UIColor orangeColor];

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
        summaryLabel.backgroundColor = [UIColor brownColor];
    }
    //Attach summaryLabel to ViewController
    [self.view addSubview:summaryLabel];
    
    //Create summaryLabelB
    summaryLabelB = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 140.0f, 300.0f, 100.0f)];
    //Check to see whether summaryLabelB is not nil
    if(summaryLabelB != nil)
    {
        //If not nil, add center aligned text spanning multiple lines
        summaryLabelB.text = @"The tale of a banished albino prince as he travels the world with his soul-stealing sword seeking vengenance on those who caused his downfall.";
        summaryLabelB.textAlignment = NSTextAlignmentCenter;
        summaryLabelB.backgroundColor = [UIColor blueColor];
        summaryLabelB.numberOfLines = 4;
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
    
    NSMutableString *itemMutableString = [[NSMutableString alloc] init];
    
    //Add commas between the NSArray
    for (int i=0; i<5; i++){
        [itemMutableString appendString:[bookItemsArray objectAtIndex:i]];
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
    listOfItemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 250.0f, 100.0f, 20.0f)];
    //Check to see whether summaryLabelB is not nil
    if(listOfItemsLabel != nil)
    {
        //If not nil, add left aligned text "List of Items:"
        listOfItemsLabel.text = @"List of Items:";
        listOfItemsLabel.textAlignment = NSTextAlignmentLeft;
        listOfItemsLabel.backgroundColor = [UIColor cyanColor];
    }
    //Attach listOfItems to ViewController
    [self.view addSubview:listOfItemsLabel];
    
    //Create listOfItemsLabelB
    listOfItemsLabelB = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 280.0f, 300.0f, 50.0f)];
    //Check to see whether summaryLabelB is not nil
    if(listOfItemsLabelB != nil)
    {
        //If not nil, add center aligned list of items from the mutable array
        listOfItemsLabelB.text = itemMutableString;
        listOfItemsLabelB.textAlignment = NSTextAlignmentCenter;
        listOfItemsLabelB.backgroundColor = [UIColor darkGrayColor];
        listOfItemsLabelB.numberOfLines = 2;
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
