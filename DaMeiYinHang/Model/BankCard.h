//
//  bankCard.h
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/23.
//  Copyright © 2018年 陈龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankCard : NSObject
@property (nonatomic ,assign)NSInteger local_id;
@property (nonatomic ,	copy)NSString *user_id;
@property (nonatomic ,strong)NSDate *add_time;
@property (nonatomic ,	copy)NSString *bank_id;
@property (nonatomic ,	copy)NSString *bank_name;
@property (nonatomic ,	copy)NSString *limit;
@property (nonatomic ,	copy)NSString *balance;
@property (nonatomic ,	copy)NSString *note;
@end
