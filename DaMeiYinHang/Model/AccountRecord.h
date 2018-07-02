//
//  accountRecord.h
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/23.
//  Copyright © 2018年 陈龙. All rights reserved.
//

#import <Foundation/Foundation.h>
//一条账单记录
@interface AccountRecord : NSObject
@property (nonatomic ,assign)NSInteger local_id;
@property (nonatomic ,	copy)NSString *user_id;
@property (nonatomic ,strong)NSString *add_time;
@property (nonatomic ,	copy)NSString *amount;
@property (nonatomic ,	copy)NSString *from_account;
@property (nonatomic ,	copy)NSString *to_account;
@property (nonatomic ,	copy)NSString *note;
@end
