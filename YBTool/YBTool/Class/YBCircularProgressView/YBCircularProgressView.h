//
//  YBCircularProgressView.h
//  YBTool
//
//  Created by 李亚斌 on 2018/5/31.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Enums

typedef NS_ENUM(NSUInteger, YBProgressBackgroundMode) {
    YBProgressBackgroundModeNone,
    YBProgressBackgroundModeCircle,
    YBProgressBackgroundModeCircumference
};

typedef NS_ENUM(NSUInteger, YBProgressMode) {
    YBProgressModeFill,
    YBProgressModeDeplete
};

#pragma mark - Interface
@interface YBCircularProgressView : UIView
@property (nonatomic) CGFloat radius;
@property (nonatomic) CGFloat lineWidth;
@property (nonatomic) CGFloat percentage;
@property (nonatomic, strong) UILabel *centerLabel;
@property (nonatomic, strong) UIColor *progressColor;
@property (nonatomic, strong) UIColor *progressBackgroundColor;
@property (nonatomic) BOOL centerLabelVisible;
@property (nonatomic) YBProgressMode progressMode;
@property (nonatomic) YBProgressBackgroundMode progressBackgroundMode;
@property (nonatomic) BOOL clockwise;

- (id)initWithCenter:(CGPoint)center
              radius:(CGFloat)radius
           lineWidth:(CGFloat)lineWidth
        progressMode:(YBProgressMode)progressMode
       progressColor:(UIColor *)progressColor
progressBackgroundMode:(YBProgressBackgroundMode)backgroundMode
progressBackgroundColor:(UIColor *)progressBackgroundColor
          percentage:(CGFloat)percentage;
@end
