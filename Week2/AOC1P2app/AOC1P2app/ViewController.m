//
//  ViewController.m
//  AOC1P2app
//
//  Created by Courtney Ardis on 1/16/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Change background to purple
    self.view.backgroundColor = [UIColor purpleColor];

    //Create bookTitleLabel
    bookTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.f, 300.0f, 30.f)];
    //Check to see whether bookTitleLabel is not nil
    if (bookTitleLabel != nil)
    {
        //If not nil, add centered aligned text
        bookTitleLabel.text = @"The Elric Saga Part 2";
        bookTitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    //Attach bookTitleLabel to ViewController
    [self.view addSubview:bookTitleLabel];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
