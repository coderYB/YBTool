//
//  UITextView+PlaceHolder.h
//  YBTool
//
//  Created by 李亚斌 on 2018/2/22.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (PlaceHolder)
/**
 *  UITextView+placeholder
 */
@property (nonatomic, copy) NSString *yb_placeHolder;
/**
 *  IQKeyboardManager等第三方框架会读取placeholder属性并创建UIToolbar展示
 */
@property (nonatomic, copy) NSString *placeholder;
/**
 *  placeHolder颜色
 */
@property (nonatomic, strong) UIColor *yb_placeHolderColor;
@end
