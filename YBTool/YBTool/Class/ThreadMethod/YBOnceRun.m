//
//  YBOnceRun.m
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import "YBOnceRun.h"

void YBOnceRun(dispatch_once_t *onceToken,void(^run)(void)){
    dispatch_once(onceToken, ^{
        if (run) {
            run();
        }
    });
}


