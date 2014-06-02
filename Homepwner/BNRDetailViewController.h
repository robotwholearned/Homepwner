//
//  BNRDetailViewController.h
//  Homepwner
//
//  Created by Sandquist, Cassandra G on 6/1/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface BNRDetailViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate>

@property (nonatomic) BNRItem* item;

@end
