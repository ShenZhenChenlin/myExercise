//
//  CLTabBar.h
//  CLProprietaryTabBar
//
//  Created by JackChen on 2016/11/15.
//  Copyright © 2016年 chenlin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CLTabBar;

@protocol CLTabBarDelegate <UITabBarDelegate>

- (void)tabBarDidClickPlusButton:(CLTabBar *)tabBar;

@end
@interface CLTabBar : UITabBar
@property (nonatomic, weak) id<CLTabBarDelegate> delegate;
@end
