//
//  YBMainThredRun.m
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import "YBMainThredRun.h"

void YBMainThreadRun(void (^run)(void))
{
    dispatch_async(dispatch_get_main_queue(), ^{
        if (run) {
            run();
        }
    });
}
