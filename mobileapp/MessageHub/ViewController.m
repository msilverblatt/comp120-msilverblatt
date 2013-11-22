//
//  ViewController.m
//  MessageHub
//
//  Created by Michael Silverblatt on 11/16/13.
//  Copyright (c) 2013 Michael Silverblatt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize user_name, message_content, myLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)doneEditing:(id)sender{
    [sender resignFirstResponder];
    [message_content endEditing:YES];
}

- (IBAction)buttonPressed:(id)sender {
    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:@"http://messagehub.herokuapp.com/messages.json"]];
    
    [request setHTTPMethod:@"POST"];
    NSString *postString = @"message[username]=";
    postString = [postString stringByAppendingString:user_name.text];
    postString = [postString stringByAppendingString:@"&message[content]="];
    postString = [postString stringByAppendingString:message_content.text];
    postString = [postString stringByAppendingString:@"&message[app_id]=4"];
  //  NSLog(postString);
    
    [request setValue:[NSString
                       stringWithFormat:@"%lu", (unsigned long)[postString length]]
   forHTTPHeaderField:@"Content-length"];
  //  [request setHTTPBody:jsonData];
    [request setHTTPBody:[postString
                          dataUsingEncoding:NSUTF8StringEncoding]];
    
    if ([[NSURLConnection alloc]
     initWithRequest:request delegate:self] != nil)
        [myLabel setText:@"Success!"];
 //   NSLog(user_name.text);
}

@end
