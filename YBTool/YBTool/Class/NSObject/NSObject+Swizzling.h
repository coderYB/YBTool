//
//  NSObject+Swizzling.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/18.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzling)

+ (void)methodSwizzlingWithOriginalSelector:(SEL)originalSelector
                         bySwizzledSelector:(SEL)swizzledSelector;
@end
