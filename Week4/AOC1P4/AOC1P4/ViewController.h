//
//  ViewController.h
//  AOC1P4
//
//  Created by Courtney Ardis on 1/28/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *username,
            *dateLabel,
            *emptyUsername,
            *instructLabel,
            *infoLabel,
            *loggedIn;
    
    UITextField *usernameInput;
    
    UIButton *loginBtn,
             *showDate,
             *infoBtn;
    NSString *usernameText;
    NSMutableString *mutableAppendedString;
    
}
- (void)append:(NSString*)thisString thatString:(NSString*)thatString;

@end
