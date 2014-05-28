//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Sandquist, Cassandra G on 5/27/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore ()
@property (nonatomic) NSMutableArray* privateItems;
@end
@implementation BNRItemStore

+ (instancetype)sharedStore
{
    static BNRItemStore* sharedStore;

    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}
- (instancetype)init
{
    [NSException raise:@"Singleton"
                format:@"Use +[BNRItemStore sharedStore]"];
    return nil;
}
- (instancetype)initPrivate
{
    self = [super init];

    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }

    return self;
}
- (BNRItem*)createItem
{
    BNRItem* randomitem = [BNRItem randomItem];

    [self.privateItems addObject:randomitem];

    return randomitem;
}
- (NSArray*)allItems
{
    return [self.privateItems copy];
}

@end
