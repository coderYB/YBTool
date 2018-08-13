//
//  YBDelayRun.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <Foundation/Foundation.h>

//延迟执行
FOUNDATION_EXPORT void YBDelayRun(NSTimeInterval delay,void(^run)(void));
