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
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allItems] count];
}
- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                                            forIndexPath:indexPath];
    NSArray* items = [[BNRItemStore sharedStore] allItems];
    BNRItem* item = items[indexPath.row];
    cell.textLabel.text = [item description];

    return cell;
}
@end
