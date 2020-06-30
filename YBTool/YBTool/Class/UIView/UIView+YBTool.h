//
//  UIView+YBTool.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/4.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YBTool)
/**
 视图坐标
 */
@property CGPoint origin;

/**
 视图大小
 */
@property CGSize size;

/**
 y坐标
 */
@property (nonatomic) CGFloat left;

/**
 x坐标
 */
@property (nonatomic) CGFloat top;

/**
 宽度
 */
@property CGFloat width;

/**
 高度
 */
@property CGFloat height;

/**
 右边x坐标
 */
@property CGFloat right;

/**
 底部y坐标
 */
@property CGFloat bottom;

/**
 中心x坐标
 */
@property (nonatomic) CGFloat centerX;

/**
 中心y坐标
 */
@property (nonatomic) CGFloat centerY;

/**
 *  通过响应者链找到view的viewController
 *
 *  @return <#return value description#>
 */
- (UIViewController *)viewController;

/**
 view截图

 @return <#return value description#>
 */
- (UIImage *)convertToScreenScaleImage;

/**
 view截图

 @return <#return value description#>
 */
- (UIImage *)convertToImageWithScale:(CGFloat)scale;
/**
 设置边框

 @param width 宽度
 @param color 颜色
 */
- (void)setBorderWidth:(CGFloat)width color:(UIColor *)color;

/**
 设置圆角

 @param cornerRadius 度数
 */
- (void)setCornerRadius:(CGFloat)cornerRadius;

// Frame Origin
@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;

// Middle Point
@property (nonatomic, readonly) CGPoint middlePoint;
@property (nonatomic, readonly) CGFloat middleX;
@property (nonatomic, readonly) CGFloat middleY;

/**
 *  移动view
 *
 *  @param point     <#point description#>
 *  @param animation <#animation description#>
 */
- (void)moveToPoint:(CGPoint)point animation:(BOOL)animation;

/**
 *  加圆角
 *
 *  @param corner       <#corner description#>
 *  @param cornerRadius <#cornerRadius description#>
 */
- (void)zy_addCorner:(UIRectCorner)corner cornerRadius:(CGFloat)cornerRadius;
//边

/**
 * lineView:       需要绘制成虚线的view
 * lineLength:     虚线的宽度
 * lineSpacing:    虚线的间距
 * lineColor:      虚线的颜色
 **/
+ (void)drawDashLine:(UIView *)lineView lineLength:(int)lineLength lineSpacing:(int)lineSpacing lineColor:(UIColor *)lineColor;

/**
 弹框动画

 @param aView <#aView description#>
 @param bgView <#bgView description#>
 @param alpha <#alpha description#>
 */
- (void)shakeToShow:(UIView *)aView bgView:(UIView *)bgView alpha:(CGFloat)alpha;

/**
 获取view所在的ViewController的name

 @return <#return value description#>
 */
- (NSString *)viewControllerName;

/**
 通过名称获取nib

 @param name <#name description#>
 @return <#return value description#>
 */
+ (UINib *)nibWithName:(NSString *)name;

/**
 通过NIb名称获取内部View视图集合

 @param name <#name description#>
 @return <#return value description#>
 */
+ (NSArray *)viewsWithNibName:(NSString *)name;

/**
 设置圆角

 @param cornerRadius 圆角大小
 @param borderWidth 圆角宽度
 @param borderColor 圆角颜色
 */
- (void)setCornerRadius:(CGFloat)cornerRadius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

/**
 self的subView的frame转换到目标view的frame

 @param subview <#subview description#>
 @param targetView <#targetView description#>
 @return <#return value description#>
 */
- (CGRect)convertSubview:(UIView *)subview toTargetView:(UIView *)targetView;

/**
 把view在父视图的frame转换为self中的frame

 @param view <#view description#>
 @return <#return value description#>
 */
- (CGRect)convertView:(UIView *)view;

/**
 处理点击空白收键盘
 */
- (void)enableResignFirstResponder;

/**  设置圆角  */
- (void)rounded:(CGFloat)cornerRadius;

/**  设置圆角和边框  */
- (void)rounded:(CGFloat)cornerRadius width:(CGFloat)borderWidth color:(UIColor *)borderColor;

/**  设置边框  */
- (void)border:(CGFloat)borderWidth color:(UIColor *)borderColor;

/**   给哪几个角设置圆角  */
-(void)round:(CGFloat)cornerRadius RectCorners:(UIRectCorner)rectCorner;

/**  设置阴影  */
-(void)shadow:(UIColor *)shadowColor opacity:(CGFloat)opacity radius:(CGFloat)radius offset:(CGSize)offset;

+ (CGFloat)getLabelHeightByWidth:(CGFloat)width Title:(NSString *)title font:(UIFont *)font;
  
@end
