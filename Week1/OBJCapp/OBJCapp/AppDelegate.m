//
//  AppDelegate.m
//  OBJCapp
//
//  Created by Courtney Ardis on 1/11/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //float data type
    float salary = 46188.66;
    float hoursPerWeek = 37.5f;
    
    //int data type
    int duties = 4;
    int daysLeftInWeek = 7;
    int weeksInYear = 52;
    int chant = 1;
    
    //BOOL data type
    BOOL fullTime = YES;
    
    //casting float to int
    float hoursPerYear = (int)(hoursPerWeek * weeksInYear);
    
    //int value
    NSLog(@"Hours Per Year:%.0f", hoursPerYear);
    //Initial float value
    NSLog(@"Hours Per Week:%.1f", hoursPerWeek);
    
    //if, else if, and else check
    //AND comparison
    if((fullTime == NO) || (salary <= 30000)){
        NSLog(@"You have a lower class job!");
        //OR comparison
    }else if((fullTime == YES) && (salary > 30000)){
        NSLog(@"You have a middle to upper class job!");
    }else{
        NSLog(@"Cannot conclude whether you have a job or what class it may be.");
    }
    
    //single for loop
    for (int x=1; x<= duties; x++)
    {
        NSLog(@"Today, you have %d duties to do.", x);
    }
    
    //while loop that decrements int value
    while(duties > 0){
        NSLog(@"You completed duty number %d", duties);
        duties--;
    }
    
    //while loop that increments int value
    while(chant < 4){
        //NSLog(@"%d", x);
        chant++;
        if(chant==2){
            NSLog(@"Ready!");
        }else if(chant==3){
            NSLog(@"Set!");
        }else{
            NSLog(@"Go!");
        }
    }
    
    //nested loop
    for(int z=7; z<= daysLeftInWeek; z--){
        NSLog(@"There are %d days left in the week!", z);
        if(z < 1){
            break;
        }
        for(int y=1; y < 3; y++){
            NSLog(@"%d Hooray!", y);
        }
    }

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
