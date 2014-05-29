//
//  BNRItemsViewController.m
//  Homepwner
//
//  Created by Sandquist, Cassandra G on 5/27/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRItemsViewController.h"
#import "BNRItem.h"
#import "BNRItemStore.h"

@implementation BNRItemsViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    return self;
}
- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}
- (NSString*)tableView:(UITableView*)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString* title;
    if (section == 0) {
        title = @"< $50";
    } else if (section == 1) {
        title = @">= $50";
    }
    return title;
}
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger integer;
    if (section == 1) {
        integer = [[[BNRItemStore sharedStore] allItemsOver50] count];
    } else if (section == 0) {
        integer = [[[BNRItemStore sharedStore] allItemsUnder50] count];
    }
    return integer;
}
- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                                            forIndexPath:indexPath];

    NSArray* items;
    if (indexPath.section == 0) {
        items = [[BNRItemStore sharedStore] allItemsUnder50];
    } else if (indexPath.section == 1) {
        items = [[BNRItemStore sharedStore] allItemsOver50];
    }

    BNRItem* item = items[indexPath.row];
    cell.textLabel.text = [item description];

    return cell;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"UITableViewCell"];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 2;
}

@end
