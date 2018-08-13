//
//  YBKeyChain.h
//  YBTool
//
//  Created by 李亚斌 on 2018/4/4.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBKeyChain : NSObject
/**
 <#Description#>
 
 @param key 保存东西到钥匙串
 @param data <#data description#>
 */
+ (void)saveWithKey:(NSString *)key data:(id)data;


/**
 加载钥匙串里的内容
 
 @param key <#key description#>
 @return <#return value description#>
 */
+ (id)loadWithKey:(NSString *)key;


/**
 删除钥匙串内容
 
 @param key <#key description#>
 */
+ (void)deleteWithKey:(NSString *)key;

@end
