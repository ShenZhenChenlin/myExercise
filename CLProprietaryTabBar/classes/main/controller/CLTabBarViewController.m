//
//  CLTabBarViewController.m
//  CLProprietaryTabBar
//
//  Created by JackChen on 2016/11/15.
//  Copyright © 2016年 chenlin. All rights reserved.
//

#import "CLTabBarViewController.h"
#import "CLMainNavController.h"
#import "CLHomeViewController.h"
#import "CLMessageController.h"
#import "CLMineViewController.h"
#import "CLNewsViewController.h"
#import "CLPostViewController.h"
#import "CLTabBar.h"
@interface CLTabBarViewController ()<CLTabBarDelegate>

@end

@implementation CLTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // 初始化子控制器
    CLHomeViewController *home = [[CLHomeViewController alloc]init];
    [self addChildViewController:home title:@"首页" image:@"home_normal" selectedImage:@"home_highlight"];
    
    CLMessageController *message = [[CLMessageController alloc]init];
    [self addChildViewController:message title:@"信息" image:@"message_normal" selectedImage:@"message_highlight"];
    
    CLNewsViewController *news = [[CLNewsViewController alloc]init];
    [self  addChildViewController:news title:@"资讯" image:@"mycity_normal" selectedImage:@"mycity_highlight"];
    
    CLMineViewController *mine = [[CLMineViewController alloc ]init];
    
    [self addChildViewController:mine title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
   
    CLTabBar *tabBar = [[CLTabBar alloc]init];
    tabBar.delegate = self;
    [self setValue:tabBar forKey:@"tabBar"];
}

-(void)addChildViewController:(UIViewController *)childController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{

    
    childController.title = title;

    childController.tabBarItem.image = [UIImage imageNamed:image];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSDictionary *dicNor = @{
                             NSForegroundColorAttributeName:[UIColor colorWithRed:123/255.0 green:123/255.0  blue:123/255.0  alpha:1.0]
                             
                             };
    [childController.tabBarItem setTitleTextAttributes:dicNor forState:UIControlStateNormal];
    
    NSDictionary *dicSelected = @{
                             NSForegroundColorAttributeName:[UIColor orangeColor]
                             
                             };
    
    [childController.tabBarItem setTitleTextAttributes:dicSelected forState:UIControlStateSelected];
    // 先把外面传进来的控制器包装成一个导航控制器
    CLMainNavController *mainNav = [[CLMainNavController alloc ]initWithRootViewController:childController];
   // 添加子控制器
    [self addChildViewController:mainNav];
}
#pragma mark - CLTabBarDelegate代理方法
- (void)tabBarDidClickPlusButton:(CLTabBar *)tabBar
{
    CLPostViewController *vc = [[CLPostViewController alloc] init];
    vc.view.backgroundColor = CLRandomColor;
    CLMainNavController *mainVC = [[CLMainNavController alloc]initWithRootViewController:vc];
    [self presentViewController:mainVC animated:YES completion:nil];
}

@end
