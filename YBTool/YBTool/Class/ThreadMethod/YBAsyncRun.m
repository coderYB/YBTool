//
//  YBAsyncRun.m
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import "YBAsyncRun.h"

void YBAsyncRun(void(^run)(void)){
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        if (run) {
            run();
        }
    });
}
