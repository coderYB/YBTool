//
//  YBOnceRun.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <Foundation/Foundation.h>

//执行一次
FOUNDATION_EXPORT void YBOnceRun(dispatch_once_t *onceToken,void(^run)(void));
