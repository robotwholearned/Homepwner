//
//  BNRImageStore.m
//  Homepwner
//
//  Created by Sandquist, Cassandra G on 6/2/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRImageStore.h"

@interface BNRImageStore ()
@property (nonatomic) NSMutableDictionary* dictionary;
@end
@implementation BNRImageStore
+ (instancetype)sharedStore
{
    static BNRImageStore* sharedStore;

    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}
- (instancetype)init
{
    [NSException raise:@"Singleton"
                format:@"Use +[BNRImageStore sharedStore]"];
    return nil;
}
- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _dictionary = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)setImage:(UIImage*)image forKey:(NSString*)key
{
    [self.dictionary setObject:image
                        forKey:key];
}
- (UIImage*)imageForKey:(NSString*)key
{
    return [self.dictionary objectForKey:key];
}
- (void)deleteImageForKey:(NSString*)key
{
    if (!key) {
        return;
    }
    [self.dictionary removeObjectForKey:key];
}

@end