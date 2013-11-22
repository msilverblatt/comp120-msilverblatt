//
//  TableViewController.m
//  MessageHub
//
//  Created by Michael Silverblatt on 11/19/13.
//  Copyright (c) 2013 Michael Silverblatt. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *messagesArray;
@end


@implementation TableViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    self.tableView.dataSource = self;
    NSURL *myURL = [[NSURL alloc]initWithString:@"http://messagehub.herokuapp.com/messages.json"];
    NSData *myData = [[NSData alloc] initWithContentsOfURL:myURL];
    id myJSON = [NSJSONSerialization JSONObjectWithData:myData options:NSJSONReadingMutableContainers error:nil];
    self.messagesArray = [[(NSArray *) myJSON reverseObjectEnumerator] allObjects];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.messagesArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"SettingsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    NSString *message = [[self.messagesArray objectAtIndex:indexPath.row] valueForKey:@"content"];
    [cell.textLabel setText:message];
    [cell.detailTextLabel setText:[[self.messagesArray objectAtIndex:indexPath.row] valueForKey:@"username"]];
    return cell;
}

@end
