//
//  BNRImageStore.h
//  Homepwner
//
//  Created by Sandquist, Cassandra G on 6/2/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRImageStore : NSObject

+ (instancetype)sharedStore;
- (void)setImage:(UIImage*)image forKey:(NSString*)key;
- (UIImage*)imageForKey:(NSString*)key;
- (void)deleteImageForKey:(NSString*)key;

@end
