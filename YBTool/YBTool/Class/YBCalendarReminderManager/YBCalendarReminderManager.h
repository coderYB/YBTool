//
//  YBCalendarReminderManager.h
//  YBTool
//
//  Created by 李亚斌 on 2018/9/11.
//  Copyright © 2018年 李亚斌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>
typedef void (^CalendarReminderManagerAddEventSussessBlock)(NSString *eventIdentifier);
typedef void (^CalendarReminderManagerAddEventFailBlock)(NSError *error);
typedef void (^CalendarReminderManagerFetchSuccessBlock)(NSArray *eventArr);

typedef void (^CalendarReminderManagerGrantedBlock)(BOOL granted);
@interface YBCalendarReminderManager : NSObject
//EKEventStore 单例
+ (EKEventStore *)manager;

//查询一个范围内的事件
//startDate : 开始日期
//endDate : 结束日期
+ (NSArray *)fatchEventsWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate;

//根据唯一表示获取一个事件
+ (EKEvent *)fetchEventWithIdentifer:(NSString *)eventIdentifer;

//向日历中添加一个事件
//title : 事件的标题
//notes : 事件的备注
//location : 地点
//startDate : 开始日期
//endDate : 结束日期
//alarms : 闹钟
//URL : 链接
//availability : 事件调度
+ (void)addEventWithTitle:(NSString *)title
                    notes:(NSString *)notes
                 location:(NSString *)location
                startDate:(NSDate *)startDate
                  endDate:(NSDate *)endDate
                   alarms:(NSArray<EKAlarm *> *)alarms
                      URL:(NSURL *)URL
             availability:(EKEventAvailability)availability
             successBlock:(CalendarReminderManagerAddEventSussessBlock)successBlock
                failBlock:(CalendarReminderManagerAddEventFailBlock)failBlock;

//删除一个事件
+ (BOOL)deleteEventWithEventIdentifier:(NSString *)eventIdentifier;


//查询所有的提醒(回调方式返回所有的提醒)
+ (void)fetchAllRemindersWithsuccess:(CalendarReminderManagerFetchSuccessBlock)success;

// 根据标识获取唯一的提醒 (⚠️这个方法也可以查询日历里面的事件）
+ (EKCalendarItem *)fetchReminderWithIdentier:(NSString *)identifier;

// 保存一个提醒
// title : 提醒的标题
// notes : 提醒的备注
// startDate : 开始日期
// endDate : 结束日期
// alarm : 闹钟
// priority : 事件调度(1-4 高 5中   6-9低  0 不设置）
// completed
+ (void)addEventIntoReminderWithTitle:(NSString *)title
                                notes:(NSString *)notes
                            startDate:(NSDate *)startDate
                              endDate:(NSDate *)endDate
                                alarm:(EKAlarm *)alarm
                             priority:(NSInteger)priority
                            completed:(BOOL)completed
                         grantedBlock:(CalendarReminderManagerGrantedBlock)grantedBlock
                         successBlock:(CalendarReminderManagerAddEventSussessBlock)successBlock
                            failBlock:(CalendarReminderManagerAddEventFailBlock)failBlock;

//根据标识删除一个提醒
+ (BOOL)deleteReminderWithIdentifer:(NSString *)identifier;
@end
