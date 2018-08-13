//
//  ClearTheCacheTools.h
//  StockProject
//
//  Created by 李亚斌 on 2018/3/15.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ClearTheCacheTools : NSObject
+(ClearTheCacheTools *)tool;

/**
 获取文件夹尺寸

 @param directoryPath 文件夹路径
 @param completion 返回文件夹尺寸
 */
- (void)getFileSize:(NSString *)directoryPath completion:(void(^)(NSInteger))completion;

/**
 *  删除文件夹所有文件
 *
 *  @param directoryPath 文件夹路径
 */
- (void)removeDirectoryPath:(NSString *)directoryPath;

/**
 获取缓存尺寸字符串
 
 @param totalSize <#totalSize description#>
 @return <#return value description#>
 */
- (NSString *)getFileSizeWithTotalSize:(NSInteger)totalSize;



@end
