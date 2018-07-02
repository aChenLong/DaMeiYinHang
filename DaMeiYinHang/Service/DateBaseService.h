//
//  DateBaseService.h
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/22.
//  Copyright © 2018年 陈龙. All rights reserved.
//
@class User;
@class BankCard;
@class AccountRecord;
#import <Foundation/Foundation.h>

@interface DateBaseService : NSObject

+ (instancetype)shareDateBase;
//插入一条记录
- (BOOL)insertAccount:(AccountRecord *)record;
- (NSArray<AccountRecord *> *)selectUser:(User *)user;
- (BOOL)createDB;
@end
