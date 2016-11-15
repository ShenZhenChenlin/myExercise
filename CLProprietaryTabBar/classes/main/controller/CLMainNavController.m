//
//  CLMainNavController.m
//  CLProprietaryTabBar
//
//  Created by JackChen on 2016/11/15.
//  Copyright © 2016年 chenlin. All rights reserved.
//

#import "CLMainNavController.h"
#import "UIBarButtonItem+CLBarButtonItem.h"
@interface CLMainNavController ()

@end

@implementation CLMainNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
// 设置导航条的样式
+(void)initialize{
    
    UIBarButtonItem *barItem = [UIBarButtonItem appearance];
    
    // 设置普通状态
    NSDictionary *dicNormal = @{
                          NSForegroundColorAttributeName:[UIColor orangeColor],
                          NSFontAttributeName:[UIFont systemFontOfSize:13]
                          };

    [barItem setTitleTextAttributes:dicNormal  forState:UIControlStateNormal];
    // 设置不可用状态
    NSDictionary *dicDisabled = @{
                    NSForegroundColorAttributeName:[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.7],
                    NSFontAttributeName:[UIFont systemFontOfSize:13]
                                  };
      [barItem setTitleTextAttributes:dicDisabled  forState:UIControlStateDisabled];
}

/**
    重写这个方法的目的是拦截所有push进来的控制器

 @param viewController 即将push进来的控制器
 @param animated 是否有动画效果
 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{

    if (self.viewControllers.count > 0) {
        // 这是push进来的控制器器不是第一个控制器
        viewController.hidesBottomBarWhenPushed = YES; // 自动隐藏tabbar
        // 设置返回状态的按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"header_back_icon" highImage:@"header_back_icon_highlight"];
    }
    [super pushViewController:viewController animated:animated];
}

-(void)back{

    [self popViewControllerAnimated:YES];

}
@end
