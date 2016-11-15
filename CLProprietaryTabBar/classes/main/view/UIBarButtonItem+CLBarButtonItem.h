//
//  UIBarButtonItem+CLBarButtonItem.h
//  CLProprietaryTabBar
//
//  Created by JackChen on 2016/11/15.
//  Copyright © 2016年 chenlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CLBarButtonItem)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
@end
