//
//  CLPostViewController.m
//  CLProprietaryTabBar
//
//  Created by JackChen on 2016/11/15.
//  Copyright © 2016年 chenlin. All rights reserved.
//

#import "CLPostViewController.h"

@interface CLPostViewController ()

@end

@implementation CLPostViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"header_back_icon"] style:UIBarButtonItemStyleDone target:self action:@selector(pop)];
    self.navigationItem.leftBarButtonItem = backItem;
    
    self.navigationItem.title = @"发布";
}

- (void)pop {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
