//
//  NSObject+YBTool.m
//  YBTool
//
//  Created by zbwx on 2018/4/4.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import "NSObject+YBTool.h"

#import <objc/runtime.h>
static const void *extendObjectKey = @"extentObject";

@implementation NSObject (YBTool)
/**
 runtime 扩展属性
 
 @return <#return value description#>
 */
-(NSMutableDictionary *)extentObject{
    NSMutableDictionary *object = objc_getAssociatedObject(self, &extendObjectKey);
    if (object == nil) {
        object = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, &extendObjectKey, object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return object;
}

-(void)setExtentObject:(NSMutableDictionary *)extentObject{
    objc_setAssociatedObject(self, &extendObjectKey, extentObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
