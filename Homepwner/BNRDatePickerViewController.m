//
//  BNRDatePickerViewController.m
//  Homepwner
//
//  Created by Sandquist, Cassandra G on 6/2/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRDatePickerViewController.h"
#import "BNRItem.h"

@interface BNRDatePickerViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker* datePicker;

@end

@implementation BNRDatePickerViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    BNRItem* item = self.item;
    [self.datePicker setDate:item.dateCreated
                    animated:YES];
}
- (void)viewWillDisappear:(BOOL)animated
{
    BNRItem* item = self.item;
    item.dateCreated = self.datePicker.date;
}
@end
