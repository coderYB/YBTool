//
//  YBDeviceInfo.h
//  YBTool
//
//  Created by 李亚斌 on 2018/8/30.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YBDeviceInfo : NSObject

/**
 获取设备IDFA

 @return 设备IDFA
 */
+(NSString *)yb_getDeviceIDFA;

/**
 获取设备IDFV

 @return 设备IDFV
 */
+(NSString *)yb_getDeviceIDFV;


/**
 获取设备MAC

 @return 设备MAC
 */
+(NSString*)yb_getDeviceMAC;

/**
 获取设备UUID

 @return 设备UUID
 */
+(NSString*)yb_getDeviceUUID;

@end
