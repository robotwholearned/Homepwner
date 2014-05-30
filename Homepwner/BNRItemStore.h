//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Sandquist, Cassandra G on 5/27/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;
@interface BNRItemStore : NSObject
@property (nonatomic, readonly, copy) NSArray* allItems;
+ (instancetype)sharedStore;
- (BNRItem*)createItem;
- (void)removeItem:(BNRItem*)item;
- (void)moveItemAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex;
@end
