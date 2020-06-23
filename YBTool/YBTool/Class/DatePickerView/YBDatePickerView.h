//
//  YBDatePickerView.h
//  YBTool
//
//  Created by 李亚斌 on 2017/12/29.
//  Copyright © 2017年 李亚斌. All rights reserved.
//

#import "YBBasePickerView.h"
@interface YBDatePickerView : YBBasePickerView
@property (nonatomic,copy) void (^pickerViewBlock)(NSInteger year,NSInteger month,NSInteger day);
-(void)setDefaultTSelectYear:(NSInteger)defaultSelectYear defaultSelectMonth:(NSInteger)defaultSelectMonth defaultSelectDay:(NSInteger)defaultSelectDay;
@end
