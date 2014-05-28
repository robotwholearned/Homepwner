//
//  BNRItem.m
//  RandomItems
//
//  Created by Sandquist, Cassandra G on 5/22/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (instancetype)initWithItemName:(NSString*)name
                  valueInDollars:(int)value
                    serialNmuber:(NSString*)serial
{
    self = [super init];
    if (self) {
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = serial;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (instancetype)initWithItemName:(NSString*)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNmuber:@""];
}
- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}
- (instancetype)initWithItemName:(NSString*)name
                    serialNumber:(NSString*)serial
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNmuber:serial];
}
+ (instancetype)randomItem
{
    NSArray* randomAdjectiveList = @[
        @"Fluffy",
        @"Rusty",
        @"Shiny"
    ];
    NSArray* randomNounList = @[
        @"Bear",
        @"Spork",
        @"Mac"
    ];

    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];

    NSString* randomName = [NSString stringWithFormat:@"%@ %@", randomAdjectiveList[adjectiveIndex], randomNounList[nounIndex]];
    int randomValue = arc4random() % 100;

    NSString* randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                                              '0' + arc4random() % 10,
                                                              'A' + arc4random() % 26,
                                                              '0' + arc4random() % 10,
                                                              'A' + arc4random() % 26,
                                                              '0' + arc4random() % 10];

    BNRItem* item = [[BNRItem alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNmuber:randomSerialNumber];
    return item;
}
- (void)setContainedItem:(BNRItem*)item
{
    _containedItem = item;
    item.container = self;
}

- (NSString*)description
{
    NSString* descriptionString =
        [[NSString alloc] initWithFormat:@"%@ (%@): Worth: $%d, recorded on %@",
                                         self.itemName,
                                         self.serialNumber,
                                         self.valueInDollars,
                                         self.dateCreated];
    return descriptionString;
}
- (void)dealloc
{
    NSLog(@"destroyed %@", self);
}
@end
