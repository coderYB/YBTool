//
//  ViewController.m
//  YBTool
//
//  Created by 李亚斌 on 2018/4/12.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import "ViewController.h"
#import "YBTool.h"

@interface ViewController (){
    YBCircularProgressView * progressView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];

    [self test_loadImage];
}

- (void) test_loadImage{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    imageView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:imageView];
    
    [YBUtils loadImageWithUrl:@"http://pic15.nipic.com/20110628/1369025_192645024000_2.jpg" finishBlock:^(UIImage *image) {
        imageView.image = image;
    }];
}

/**
 UIButton
 */
- (void) test_UIButton{
    UIButton * btn = [UIButton buttonWithTitle:@"title" font:YBSystemFont(14) titleColor:[UIColor orangeColor] withBlock:^(id sender) {
        
    }];
    [btn setFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn];
    
    UIButton * btn1 = [UIButton buttonWithTitle:@"title" font:YBSystemFont(14) titleColor:[UIColor orangeColor] normalImage:YBNameImage(@"") withBlock:^(id sender) {
        
    }];
    [btn1 setFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn1];
    
    UIButton * btn2 = [UIButton buttonWithNormalTitle:@"title" selectedTitle:@"title" font:YBSystemFont(14) NormaltitleColor:[UIColor orangeColor] selectedTitleColor:[UIColor orangeColor] normalImage:YBNameImage(@"") selectedImage:YBNameImage(@"") withBlock:^(id sender) {
        
    }];
    [btn2 setFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn2];
}

/**
 UILabel
 */
- (void) test_UILabel{
    UILabel * label = [UILabel labelWithTitle:@"test" textAlignment:NSTextAlignmentLeft font:YBSystemFont(14) color:[UIColor orangeColor]];
    [label setFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:label];
}

/**
 UIDevice
 */
- (void) test_UIDevice{
    NSLog(@"屏幕宽和高 w = %f, h = %f",[UIDevice getDeviceScreenWidth],[UIDevice getDeviceScreenHeight]);
    NSLog(@"设备的名字 = %@",[UIDevice getDeviceName]);
    NSLog(@"设备型号 = %@",[UIDevice getDeviceTypeName]);
    NSLog(@"bundleID = %@",[UIDevice getBundleID]);
    NSLog(@"app版本号 = %@",[UIDevice getAPPVerion]);
    NSLog(@"app_build版本号 = %@",[UIDevice getAPPBuildVersion]);
    NSLog(@"appName = %@",[UIDevice getAPPName]);
    NSLog(@"iPhoneUUID = %@",[UIDevice getiPhoneUUID]);
    NSLog(@"设备系统版本 = %@", [UIDevice getSystemVersion]);
    
    NSLog(@"设备电量 = %f",[UIDevice getCurrentBatteryLevel]);
    NSLog(@"设备ip = %@",[UIDevice getDeviceIPAdress]);
    
    NSLog(@"设备总内存大小 = %lld",[UIDevice getTotalMemorySize]);
    NSLog(@"当前可用内存 = %lld",[UIDevice getAvailableMemorySize]);
    NSLog(@"设备总磁盘容量 = %lld",[UIDevice getTotalDiskSize]);
    NSLog(@"可用磁盘容量 = %lld",[UIDevice getAvailableDiskSize]);
    NSLog(@"当前语言 = %@",[UIDevice getDeviceLanguage]);
    NSLog(@"运营商 = %@",[UIDevice getCarrierName]);
    NSLog(@"网络类型 = %@",[UIDevice getNetworkTypeName]);
}

/**
 UIColor
 */
- (void)test_UIColor{
    //渐变颜色
    UIColor * color = [UIColor getGradientColorFromColor:[UIColor redColor] toColor:[UIColor purpleColor] withHeight:[UIDevice getDeviceScreenHeight]];
    self.view.backgroundColor = color;
    
}
- (void)test_UIView_event{
    //给self.view传参数和添加点击事件
    self.view.param = @{@"1":@"one"};
    [self.view addTapActionWithBlock:^(NSDictionary *param) {
        NSLog(@"你点击了self.view,param = %@",param);
        //自定义处理事件
    }];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, [UIDevice getDeviceScreenHeight] - 50, 50, 50)];
    imageView.backgroundColor = [UIColor purpleColor];
    imageView.tag = 100;
    [self.view addSubview:imageView];
    
    //给imageView添加点击事件
    imageView.param = @{@"param":@"这是参数"};
    [imageView addTapActionWithBlock:^(NSDictionary *param) {
        NSLog(@"你点击了imageView,param = %@",param);
        //自定义处理事件
    }];
    
    //给imageView添加长按事件
    [imageView addLongPressActionWithBlock:^(NSDictionary *param) {
        NSLog(@"你长按了imageView,param = %@",param);
        //自定义处理事件
    }];
    
    [YBCustomAlertView initWithTitle:@"" message:@"请点击self.view或者imageView即可触发点击事件" contentView:nil confirmButtonTitle:@"确定" cancleButtonTitle:nil alertBlock:^(YBCustomAlertView * _Nonnull customAlertView, NSInteger index) {
        
    } otherButtonTitles:nil, nil];
    
}
- (void)test_UIView_frame{
    UIView *view = self.view;
    NSLog(@"上 = %f，左 = %f，下 = %f，右 = %f, 宽 = %f, 高 = %f,中心x = %f,中心y = %f",view.top,view.left,view.bottom,view.right,view.width,view.height,view.centerX,view.centerY);
    
    NSLog(@"self.View所在的viewController = %@",[self.view viewController]);
    NSLog(@"self.View所在的viewControllerName = %@",[self.view viewControllerName]);
    
    //设置圆角
    [self.view setCornerRadius:5 borderWidth:1 borderColor:[UIColor redColor]];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, [UIDevice getDeviceScreenHeight] - 50, 50, 50)];
    imageView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:imageView];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    [imageView addSubview:view1];
    
    NSLog(@"目标转换坐标 = %@",NSStringFromCGRect([imageView convertSubview:view1 toTargetView:self.view]));
    NSLog(@"目标转换坐标 = %@",NSStringFromCGRect([self.view convertView:view1]));
    
}
- (void)test_UIImage_handle{
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, [UIDevice getDeviceScreenHeight] - 150, 150, 150)];
    [self.view addSubview:imageView];
    
    UIImage *image = [UIImage imageNamed:@"1"];
    //对图片加水印
    imageView.image = [UIImage waterMarkWithImage:image markImage:image location:CGRectMake(50, 50, 150, 150)];
    
    //等比缩放
    imageView.image = [UIImage scaleImage:image toScale:0.1];
    
    //自定义剪切
    imageView.image = [UIImage customCutImage:image AtRect:CGRectMake(1000, 500, 500, 500)];
    
    //自定义旋转后的图片
    imageView.image = [UIImage customImageRotate:image rotatedRadians:M_PI/4.0];
    
    UIViewController *vc = [UIWindow getCurrentVC];
    NSLog(@"当前vc = %@",vc);
    
}
- (void)test_NSArray_YBLog{
    NSArray *array = @[@"123",@"abcdefg",@"这是汉语",@{@"empty":@""}];
    NSDictionary *dict = @{@"hello world!":@"你好 世界！",@"empty":@"",@"array":array};
    NSLog(@"%@\n%@",array,dict);
}

- (void)test_NSArray{
    NSArray *array = @[@"1",@"2",@"3",@"4",@"5",@"1",@"2",@"3",@"1",@"4"];
    NSLog(@"取越界数据%@",[array safeObjectAtIndex:100]);
    NSLog(@"不可变数组添加对象返回新的可变数组：%@",[array safeAddObject:@"3"]);
    NSLog(@"不可变数组删除对象返回新的可变数组：%@",[array safeArrayRemoveObjectAtIndex:1]);
    
    NSArray *newArray = [array mapArrayUsingBlock:^id(id object, NSInteger index) {
        if (index % 2 == 1) {
            return @"100";
        }
        return object;
    }];
    NSLog(@"转换数组对象：%@",newArray);
    
    
    NSArray *newArray1 = [array filterArrayUsingBlock:^BOOL(id object) {
        if ([object integerValue] <4) {
            return YES;
        }else{
            return NO;
        }
    } stopWhenFind:NO];
    
    NSLog(@"筛选数组对象：%@",newArray1);
    
    NSArray *newArray2 = [array deleteArrayUsingBlock:^BOOL(id object) {
        if ([object integerValue] <4) {
            return YES;
        }else{
            return NO;
        }
    } stopWhenDelete:NO];
    
    NSLog(@"删除特定数组对象：%@",newArray2);
    
    NSLog(@"数组乱序：%@",[array shuffledArray]);
    NSLog(@"数组倒序：%@",[array reversedArray]);
    NSLog(@"数组去重：%@",[array uniqueArray]);
}

- (void)test_NSMutableArray{
    
    NSArray *array = @[@"1",@"2",@"3",@"4",@"5",@"1",@"2",@"3",@"1",@"4",@"1",@"2",@"3",@"4",@"5",@"1",@"2",@"3",@"1",@"4"];
    
    NSMutableArray *mutArray = [NSMutableArray arrayWithArray:array];
    
    [mutArray safeReplaceObjectAtIndex:5 withObject:@"1200"];
    NSLog(@"替换对象：%@",mutArray);
    
    [mutArray mapUsingBlock:^id(id object, NSInteger index) {
        if (index % 2 == 1) {
            return @"100";
        }
        return object;
    }];
    NSLog(@"转换数组对象：%@",mutArray);
    
    
    
    [mutArray filterUsingBlock:^BOOL(id object) {
        if ([object integerValue] <4) {
            return YES;
        }else{
            return NO;
        }
    } stopWhenFind:NO];
    
    NSLog(@"筛选数组对象：%@",mutArray);
    
    [mutArray deleteUsingBlock:^BOOL(id object) {
        if ([object integerValue] >2) {
            return YES;
        }else{
            return NO;
        }
    } stopWhenDelete:NO];
    
    NSLog(@"删除特定数组对象：%@",mutArray);
    
    [mutArray shuffle];
    NSLog(@"数组乱序：%@",mutArray);
    
    [mutArray reverse];
    NSLog(@"数组倒序：%@",mutArray);
    
    [mutArray unique];
    NSLog(@"数组去重：%@",mutArray);
}

- (void)test_NSDictionary{
    NSDictionary *dict = @{@"1":@"one",@"2":@"two",@"3":@"three",@"4":@"four",@"5":@"five",@"6":@"six"};
    
    NSLog(@"是否包含key=%d",[dict hasKey:@"seven"]);
    
    [dict safeSetValue:nil forKey:nil];
    NSLog(@"安全赋值：%@",dict);
    
    NSLog(@"合并两个字典方式1：%@",[NSDictionary safeDictionaryByMerging:dict with:@{@"7":@"seven"}]);
    NSLog(@"合并两个字典方式2：%@",[dict safeDictionaryByMergingWith:@{@"7":@"seven"}]);
    
    NSLog(@"转换为json字符串：%@",[dict safeJSONString]);
    NSLog(@"安全删除元素：%@",[dict safeDictionaryRemoveObjectForKey:nil]);
    
    NSDictionary *newDict = [dict mapDictionaryUsingBlock:^id(id object, NSString *key) {
        if ([key integerValue] > 3) {
            //转换条件：把key值大于3的value变成ten
            return @"ten";
        }else{
            return object;
        }
    }];
    NSLog(@"转换特定条件字典对象：%@",newDict);
    
    NSDictionary *newDict1 = [dict filterDictionaryUsingBlock:^BOOL(id object, NSString *key) {
        if ([key integerValue] > 2) {
            //筛选条件：把key值大于2的对象
            return YES;
        }else{
            return NO;
        }
        
    } stopWhenFind:NO];
    NSLog(@"筛选特定条件字典对象：%@",newDict1);
    
    NSDictionary *newDict2 = [dict deleteDictionaryUsingBlock:^BOOL(id object, NSString *key) {
        if ([key integerValue] > 4) {
            //删除条件：把key值大于4的对象
            return YES;
        }else{
            return NO;
        }
    } stopWhenDelete:NO];
    
    NSLog(@"删除特定条件字典对象：%@",newDict2);
    
    NSDictionary *url_dict = @{@"1":@"one",@"2":@"two",@"3":@"three",@"4":@"four",@"5":@"five",@"6":@"六你好"};
    
    NSString *urlEncode = [url_dict URLQueryString];
    
    NSLog(@"URL编码字符串：%@",urlEncode);
    
    NSLog(@"URL编码字典：%@",[url_dict URLQueryDictionary]);
    
    NSLog(@"URL转为为字典：%@",[NSDictionary dictionaryWithURLQuery:urlEncode]);
}

- (void)test_NSMutableDictionary{
    
    NSDictionary *dict = @{@"1":@"one",@"2":@"two",@"3":@"three",@"4":@"four",@"5":@"five",@"6":@"six"};
    
    NSMutableDictionary *mDict = [NSMutableDictionary dictionaryWithDictionary:dict];
    
    NSLog(@"是否包含key=%d",[dict hasKey:@"seven"]);
    
    [mDict safeSetValue:nil forKey:nil];
    [mDict safeSetObject:@"seven" forKey:@"7"];
    NSLog(@"安全赋值：%@",mDict);
    
    NSLog(@"转换为json字符串：%@",[mDict safeJSONString]);
    NSLog(@"安全删除元素：%@",[mDict safeDictionaryRemoveObjectForKey:nil]);
    
    [mDict mapUsingBlock:^id(id object, NSString *key) {
        if ([key integerValue] > 3) {
            //转换条件：把key值大于3的value变成ten
            return @"ten";
        }else{
            return object;
        }
    }];
    NSLog(@"转换特定条件字典对象：%@",mDict);
    
    [mDict filterUsingBlock:^BOOL(id object, NSString *key) {
        if ([key integerValue] > 2) {
            //筛选条件：把key值大于2的对象
            return YES;
        }else{
            return NO;
        }
    } stopWhenFind:NO];
    NSLog(@"筛选特定条件字典对象：%@",mDict);
    
    [mDict deleteUsingBlock:^BOOL(id object, NSString *key) {
        if ([key integerValue] > 5) {
            //删除条件：把key值大于4的对象
            return YES;
        }else{
            return NO;
        }
    } stopWhenDelete:NO];
    
    NSLog(@"删除特定条件字典对象：%@",mDict);
}

- (void)test_NSFileManager{
    NSDictionary *pathDict = @{@"根目录":[NSFileManager getDirHome],@"Doctments目录":[NSFileManager getDirDocumentsPath],@"Library目录":[NSFileManager getDirLibraryPath],@"Cache目录":[NSFileManager getDirCachePath],@"Tmp目录":[NSFileManager getDirTmpPath]};
    NSLog(@"app目录：%@",pathDict);
    ;
    NSString *path = [NSFileManager getDirHome];
    NSLog(@"递归获取文件%@", [NSFileManager getSubpathsAtPath:path]);
    NSLog(@"非递归获取文件%@", [NSFileManager getContentsOfDirectoryAtPath:path]);
    NSLog(@"创建test目录：%d",[NSFileManager createDirectoryAtPath:path dirName:@"test"]);
    NSLog(@"创建文件：%d",[NSFileManager createFileAtPath:path fileName:@"test/1.txt"]);
    
    
    NSString *txtPath = [NSString stringWithFormat:@"%@/123",path];
    NSString *testStr = @"这是测试111111111";
    NSData *data = [testStr dataUsingEncoding:NSUTF8StringEncoding];
    [NSFileManager writeWithData:data toPath:path fileName:@"123"];
    NSData *data1 = [NSFileManager readFileAtPath:txtPath];
    NSLog(@"读取的内容是：\n%@", [[NSString alloc] initWithData:data1 encoding:NSUTF8StringEncoding]);
    
    NSString *tmpPath = [[NSFileManager getDirTmpPath] stringByAppendingPathComponent:@"1234"];
    NSString *tmp1Path = [[NSFileManager getDirHome] stringByAppendingPathComponent:@"123434"];
    //复制文件
    [NSFileManager copyItemAtPath:txtPath toPath:tmpPath];
    //移动文件
    [NSFileManager moveItemAtPath:tmpPath toPath:tmp1Path];
    
    //删除文件
    [NSFileManager deleteFileOrDicAtPath:txtPath];
    
}

- (void)test_NSString{
    NSString *url = @"你好! world";
    NSString *urlencode = [url urlEncode];
    NSLog(@"编码url = %@",urlencode);
    NSLog(@"解码url = %@",[urlencode urlDecode]);
    //    NSString *empty;
    //    BOOL isEmpty = [NSString isEmptyWithString:empty];
    
    //    BOOL isChinese = [url containsChineseCharacter];
    
    NSLog(@"UUID = %@",[NSString getUUID]);
    
    //NSString > NSData
    //    NSData *data = [url getData];
    
    NSLog(@"md5加密(32位)：%@",[url md5]);
    NSLog(@"sha512加密：%@",[url sha512]);
    
    NSString *key = @"123456781234567812345678";
    NSString *base64key = [key base64Encoding];
    
    NSLog(@"base64编码:%@",base64key);
    
}



- (void)test_NSUserDefaults{
    [NSUserDefaults setObject:@"hello world" forKey:@"你好"];
    NSLog(@"取出数据 = %@",[NSUserDefaults objectForKey:@"你好"]);
    
    NSLog(@"取出数据 = %@",[NSUserDefaults objectForKey:nil]);
    
    [NSUserDefaults setArcObject:@"onetwothree" forKey:@"123"];
    NSLog(@"取出数据 = %@",[NSUserDefaults arcObjectForKey:@"123"]);
    
}
- (void)test_NSDate_handle{
    NSDate *date = [NSDate dataFromTimeIntervalSince1970:1000000000000];
    NSString *dateStr = [NSDate dateStringWithDate:date dateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSLog(@"date = %@ /n dateStr = %@",date,dateStr);
    
    NSDate *nowDate = [NSDate date];
    
    NSLog(@"今天一个星期的第%lu天",[nowDate weekday]);
    NSDate *testDate = [NSDate dateWithYYYYMMddHHmmss:@"2017-08-09 12:00:00"];
    NSLog(@"是否是同一周：%d", [nowDate sameWeekWithDate:testDate]);
    
    NSLog(@"%@",[self getAllProperties]);
    NSLog(@"%@",[self getAllMethods]);
    NSLog(@"%@",[self getAllIvars]);
}
- (void)createProgressView{
    //中间进度条
    progressView = [[YBCircularProgressView alloc] initWithFrame:CGRectMake(50, 100, 120, 120)];
    progressView.lineWidth = 10.0f;
    progressView.progressColor = [UIColor colorWithHex:0x2756dc];
    
    progressView.clockwise = NO;
    progressView.progressBackgroundColor = [UIColor colorWithHex:0x2756dc alpha:0.45];
    progressView.centerLabel.font = [UIFont systemFontOfSize:10];
    progressView.centerLabelVisible = YES;
    [progressView setPercentage:0.0];
    [progressView.centerLabel setTextColor:[UIColor redColor]];
    [self.view addSubview:progressView];
    
    [progressView setPercentage:69/90.0f];
    [progressView.centerLabel setText:[NSString stringWithFormat:@"%0.0f'",69.0f/90.0f]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
