//
//  UIWindow+YBTool.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (YBTool)

/**
 获取当前屏幕中present出来的viewcontroller

 @return <#return value description#>
 */
+ (UIViewController *)getCurrentPresentedVC;

/**
 获取当前屏幕显示的viewcontroller

 @return <#return value description#>
 */
+ (UIViewController *)getCurrentVC;
@end
