//
//  BNRItem.h
//  RandomItems
//
//  Created by Sandquist, Cassandra G on 5/22/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject {
}
@property (nonatomic, copy) NSString* itemName;
@property (nonatomic, copy) NSString* serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate* dateCreated;
@property (nonatomic, strong) BNRItem* containedItem;
@property (nonatomic, weak) BNRItem* container;

//desiganted initializer
- (instancetype)initWithItemName:(NSString*)name
                  valueInDollars:(int)value
                    serialNmuber:(NSString*)serial;

- (instancetype)initWithItemName:(NSString*)name;

- (instancetype)initWithItemName:(NSString*)name
                    serialNumber:(NSString*)serial;

+ (instancetype)randomItem;

@end
