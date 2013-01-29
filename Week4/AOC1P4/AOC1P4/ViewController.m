//
//  ViewController.m
//  AOC1P4
//
//  Created by Courtney Ardis on 1/28/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //change background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //create username label
    username = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 90.0f, 30.0f)];
    if(username != nil)
    {
        //add username label text
        username.text = @"Username: ";
        //change username label background color
        username.backgroundColor = [UIColor lightGrayColor];
        //add username label to view
        [self.view addSubview:username];
    }
    
    //create username text field
    
//    UITextField *usernameInput = [[UITextField alloc] initWithFrame:CGRectMake(30.0f, 10.0f, 90.0f, 30.0f)];
//    if(usernameInput != nil)
//    {
//        
//    }
    //add username label to view
//    [self.view addSubview:usernameInput];
    
    //create Login button
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(loginBtn != nil)
    {
        //position loginBtn
        loginBtn.frame = CGRectMake(250.0f, 50.0f, 60.0f, 30.0f);
        [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
        loginBtn.tag = BUTTON_ZERO;
        [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        //add loginBtn to view
        [self.view addSubview:loginBtn];
    }
    
    //create instruction label
    instructLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 70.0f)];
    if(instructLabel != nil)
    {
        //add label text
        instructLabel.text = @"Please Enter Username";
        //change label background color
        instructLabel.backgroundColor = [UIColor whiteColor];
        //align label text center
        instructLabel.textAlignment = NSTextAlignmentCenter;
        //add emptyUsername to view
        [self.view addSubview:instructLabel];
    }
    
    //create show date button
    UIButton *showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(showDate != nil)
    {
        //position showDate
        showDate.frame = CGRectMake(5.0f, 250.0f, 90.0f, 40.0f);
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        showDate.tag = BUTTON_ONE;
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showDate];
    }
    
    //create information button
    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if(infoBtn != nil)
    {
        //position infoBtn
        infoBtn.frame = CGRectMake(10.0f, 350.0f, 20.0f, 20.0f);
        infoBtn.tag = BUTTON_TWO;
        [infoBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoBtn];
    }
    
    //create info label
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 380.0f, 320.0f, 80.0f)];
    
       [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//onClick function
-(void)onClick:(UIButton*)button
{
    //do what you need to do when the button is clicked
    if (button.tag == BUTTON_ZERO)
    {
        //create onClick event label
        emptyUsername = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 70.0f)];
        loggedIn = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 70.0f)];
        //fix so that if username text field is empty, display first
        //and if username text field is not empty, display second(else)
        if(emptyUsername != nil)
        {
            //add label text
            emptyUsername.text = @"Username cannot be empty";
            //change label background color
            emptyUsername.backgroundColor = [UIColor whiteColor];
            //align label text center
            emptyUsername.textAlignment = NSTextAlignmentCenter;
        }
        else
        {
            //add label text
            loggedIn.text = @"Username has been logged in";
            //change label background color
            loggedIn.backgroundColor = [UIColor whiteColor];
            //align label text center
            loggedIn.textAlignment = NSTextAlignmentCenter;
        }
        //add emptyUsername to view
        [self.view addSubview:emptyUsername];
    }
    else if (button.tag == BUTTON_ONE)
    {
        //create NSDate
        NSDate *date = [NSDate date];
        //format date
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if(dateFormatter != nil)
        {
            //custom date formatter
            //[dateFormatter setDateFormat:@"EEEE yyyy.MM.dd zzz"];
            [dateFormatter setDateStyle:NSDateFormatterFullStyle];
        }
        //create alert view to show for when button 1 is clicked
        UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Today's Date" message:[dateFormatter stringFromDate:date]  delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        if (dateAlert != nil)
        {
            [dateAlert show];
        }
    }
    else if (button.tag == BUTTON_TWO)
    {
        if(infoLabel != nil)
        {
            infoLabel.text = @"This application was created:\nCourtney Ardis";
            infoLabel.backgroundColor = [UIColor lightGrayColor];
            infoLabel.textAlignment = NSTextAlignmentCenter;
            infoLabel.numberOfLines = 2;
        }
        [self.view addSubview:infoLabel];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
