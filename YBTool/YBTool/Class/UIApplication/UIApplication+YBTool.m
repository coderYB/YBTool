//
//  UIApplication+YBTool.m
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import "UIApplication+YBTool.h"

@implementation UIApplication (YBTool)

/**
 应用程序之间跳转

 @param urlString <#urlString description#>
 */
+ (void)quickOpenURLString:(NSString *)urlString{
    UIApplication *app = [UIApplication sharedApplication];
    NSURL *url = [NSURL URLWithString:urlString];
    if ([app canOpenURL:url]) {
        [app openURL:url];
    }
}


/**
 跳转到app设置页面
 */
+ (void)goToAppSetting{
    [UIApplication quickOpenURLString:UIApplicationOpenSettingsURLString];
}

/**
 拨打电话

 @param telephone <#telephone description#>
 */
+ (void)goToTelephone:(NSString *)telephone{
    NSString *urlString = [@"tel://" stringByAppendingString:telephone];
    [UIApplication quickOpenURLString:urlString];
}
@end
