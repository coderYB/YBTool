//
//  YBMainThredRun.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <Foundation/Foundation.h>


//主线程执行
FOUNDATION_EXPORT void YBMainThreadRun(void(^run)(void));
