//
//  ZYMainViewController.m
//  02-抽屉效果
//
//  Created by zhuyi on 15/9/18.
//  Copyright © 2015年 zhuyi. All rights reserved.
//

#import "ZYMainViewController.h"
#import "ZYViewController.h"


@interface ZYMainViewController ()

@end

@implementation ZYMainViewController

// 设计原理，如果A控制器的view成为B控制器View是子控件，注意A控制器一定要成为B控制器的子控制器
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 创建tableView控制器（A）
    ZYViewController *vc = [[ZYViewController alloc] initWithStyle:UITableViewStyleGrouped];
    vc.view.frame = self.view.bounds;
    
    // A成为B控制器的子控制器
    [self addChildViewController:vc];
    
    // 主视图展示tableView
    [self.mainV addSubview:vc.view];
    
}

@end
