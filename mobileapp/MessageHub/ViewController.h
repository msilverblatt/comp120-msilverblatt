//
//  ViewController.h
//  MessageHub
//
//  Created by Michael Silverblatt on 11/16/13.
//  Copyright (c) 2013 Michael Silverblatt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)buttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *message_content;
@property (weak, nonatomic) IBOutlet UITextField *user_name;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)doneEditing:(id)sender;

@end
