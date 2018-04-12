//
//  UIColor+YBTool.h
//  YBTool
//
//  Created by zbwx on 2018/4/4.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import <UIKit/UIKit.h>
// 颜色RBG
#define RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
//颜色RBGA
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
@interface UIColor (YBTool)
/**
 *  16进制颜色转RGB
 *
 *  @param hexValue   色值
 *  @param alphaValue 透明度
 *
 *  @return <#return value description#>
 */
+ (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

/**
 *   16进制颜色转RGB
 *
 *  @param hexValue 色值
 *
 *  @return <#return value description#>
 */
+ (UIColor*) colorWithHex:(NSInteger)hexValue;

/**
 *  RGB转16进制颜色
 *
 *  @param color RGB颜色
 *
 *  @return 16进制颜色字符串
 */
+ (NSString *) hexFromUIColor: (UIColor*) color;

@end
