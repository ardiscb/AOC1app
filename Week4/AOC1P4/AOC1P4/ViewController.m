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
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //change background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //create username label
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 90.0f, 30.0f)];
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
    
    instructLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 70.0f)];
    if(instructLabel != nil)
    {
        //add label text
        instructLabel.text = @"Please Enter Username";
        //change label background color
        instructLabel.backgroundColor = [UIColor whiteColor];
        //align label text center
        instructLabel.textAlignment = NSTextAlignmentCenter;
    }
    //add emptyUsername to view
    [self.view addSubview:instructLabel];
    
    //UIButton
    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    if (button != nil)
//    {
//        //create button
//        button.frame = CGRectMake(10.0f, 10.0f, 100.0f, 50.0f);
//        //change button highlight/tint color
//        button.tintColor = [UIColor redColor];
//        //add button text and state
//        [button setTitle:@"Push Me" forState:UIControlStateNormal];
//        //change text and state
//        [button setTitle:@"Pushed" forState:UIControlStateHighlighted];
//        //add to view
//        [self.view addSubview:button];
//    }
    //create info button
//    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeInfoDark];
    
    //create detail button
    //UIButton *detail = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    //create add contact button
    //UIButton *addContact = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
//    if (button2 != nil)
//    {
        //change button background color
//        button2.backgroundColor = [UIColor yellowColor];
        //update frame
        //20.0f 20.0f width and height good for info button
//        button2.frame = CGRectMake(50.0f, 40.0f, 20.0f, 20.0f);
//        [self.view addSubview:button2];
//    }
    
    //create custom button
//    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
//    
//    if(button3 != nil)
//    {
//        //add normal image to button
//        UIImage *normalImage = [UIImage imageNamed:@"PowerOfMedia.jpg"];
//        //add highlight image to button
//        UIImage *highlightImage = [UIImage imageNamed:@"mediaPlanet.jpg"];
//        
//        //set image to normal state 
//        [button3 setImage:normalImage forState:UIControlStateNormal];
//        //set image to highlighted state
//        [button3 setImage: highlightImage forState:UIControlStateHighlighted];
//        button3.frame = CGRectMake(20.0f, 20.0f, 100.0f, 100.0f);
//        //add to view
//        [self.view addSubview:button3];
//    }
    
    //END UIButton
    
    //SELECTOR AND TAG
    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    if (button != nil)
//    {
//        button.frame = CGRectMake(10.0f, 10.0f, 80.0f, 40.0f);
//        [button setTitle:@"Push Me" forState:UIControlStateNormal];
//        
//        //define tag
//        button.tag = BUTTON_ZERO;
//        
//        //target/event capture
//        //action:when the button is clicked, the onClick(variable name): function will be performed
//        [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
//        [self.view addSubview:button];
//    }
//    
//    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    if (button2 != nil)
//    {
//        button2.frame = CGRectMake(100.0f, 10.0f, 80.0f, 40.0f);
//        [button2 setTitle:@"Push Me2" forState:UIControlStateNormal];
//        
//        //define tag
//        button2.tag = BUTTON_ONE;
//        
//        //target/event capture
//        //action:when the button is clicked, the onClick(variable name): function will be performed
//        [button2 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
//        [self.view addSubview:button2];
//    }
    //END SELECTOR AND TAG

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
        
//        //create alert view to show for when button 0 is clicked
//        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Popup!" message:@"You pressed button 0" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//        
//        if (alertView != nil)
//        {
//            [alertView show];
//        }
    }
    else if (button.tag == BUTTON_ONE)
    {
        //create alert view to show for when button 1 is clicked
        UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Today's Date" message:@"This is where the date will display" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        if (dateAlert != nil)
        {
            [dateAlert show];
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
