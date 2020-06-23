//
//  UIApplication+YBTool.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (YBTool)

/**
 应用程序之间跳转(如调起电话：tel://1234567890 )

 @param urlString <#urlString description#>
 */
+ (void)quickOpenURLString:(NSString *)urlString;

/**
 跳转到app设置页面
 */
+ (void)goToAppSetting;

/**
 拨打电话

 @param telephone <#telephone description#>
 */
+ (void)goToTelephone:(NSString *)telephone;

@end
