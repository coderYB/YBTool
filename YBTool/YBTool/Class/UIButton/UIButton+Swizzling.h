//
//  UIButton+Swizzling.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/18.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <UIKit/UIKit.h>
//默认时间间隔
#define defaultInterval 1
@interface UIButton (Swizzling)
//点击间隔
@property (nonatomic, assign) NSTimeInterval timeInterval;
//用于设置单个按钮不需要被hook
@property (nonatomic, assign) BOOL isIgnore;
@end
