//
//  UIView+YBTool.h
//  YBTool
//
//  Created by zbwx on 2018/4/4.
//  Copyright © 2018年 zbwx. All rights reserved.
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
-(UIViewController *)viewController;

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
- (void) moveToPoint:(CGPoint) point animation:(BOOL)animation;

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
 *  加line  color传nil  有默认的颜色
 *  如果加在cell上  一定要加在cell.contentview上   masnory在某个系统下（记不清了）  加在cell上的masnory会崩溃
 *  @param leftMargin   左边距
 *  @param bottomMargin 下边距
 *  @param height       高度
 */
- (UIView *)addlineViewWithleftMargin:(float)leftMargin bottemMargin:(float)bottomMargin AndHeight:(float)height color:(UIColor *)color;
- (UIView *)addlineViewWithleftMargin:(float)leftMargin rightMargin:(float)rightMargin bottemMargin:(float)bottomMargin AndHeight:(float)height color:(UIColor *)color;
- (UIView *)addlineViewWithleftMargin:(float)leftMargin rightMargin:(float)rightMargin topMargin:(float)topMargin AndHeight:(float)height color:(UIColor *)color;
- (UIView *)addlineViewWithleftMargin:(float)leftMargin topMargin:(float)topMargin AndHeight:(float)height color:(UIColor *)color;

//弹框动画
- (void) shakeToShow:(UIView*)aView bgView:(UIView*)bgView alpha:(CGFloat)alpha;
@end
