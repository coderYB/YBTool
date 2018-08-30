//
//  YBDeviceInfo.m
//  YBTool
//
//  Created by 李亚斌 on 2018/8/30.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import "YBDeviceInfo.h"
//获取idfa
#import <AdSupport/ASIdentifierManager.h>
//获取mac
#include <sys/sysctl.h>
#include <sys/socket.h>
#include <net/if.h>
#include <net/if_dl.h>
@implementation YBDeviceInfo
+(NSString *)yb_getDeviceIDFA{
    ASIdentifierManager *asIM = [[ASIdentifierManager alloc] init];
    NSString *idfaStr = [asIM.advertisingIdentifier UUIDString];
    return idfaStr;
}

+(NSString *)yb_getDeviceIDFV{
    NSString* idfvStr      = [[UIDevice currentDevice] identifierForVendor].UUIDString;
    return idfvStr;
}

+(NSString*)yb_getDeviceMAC{
    int mib[6];
    size_t len;
    char *buf;
    unsigned char *ptr;
    struct if_msghdr *ifm;
    struct sockaddr_dl *sdl;
    
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error\n");
        return NULL;
    }
    
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1\n");
        return NULL;
    }
    
    if ((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. error!\n");
        return NULL;
    }
    
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        free(buf);
        return NULL;
    }
    
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    NSString *macStr = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X",*ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    free(buf);
    return macStr;
}
+(NSString*)yb_getDeviceUUID{
    
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    assert(uuid != NULL);
    CFStringRef uuidStr = CFUUIDCreateString(NULL, uuid);
    return (__bridge NSString *)(uuidStr);
}

@end
