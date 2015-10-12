//
//  ViewController.h
//  02-抽屉效果
//
//  Created by zhuyi on 15/9/18.
//  Copyright © 2015年 zhuyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYDrawerViewController : UIViewController

// 设计原理：如果需要把控件暴露出去，一定要要写readonly
@property (nonatomic, weak, readonly) UIView *mainV;
@property (nonatomic, weak, readonly) UIView *leftV;
@property (nonatomic, weak, readonly) UIView *rightV;

@end

