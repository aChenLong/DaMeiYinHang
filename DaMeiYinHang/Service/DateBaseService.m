//
//  DateBaseService.m
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/22.
//  Copyright © 2018年 陈龙. All rights reserved.
//
#import "AccountRecord.h"
#import "BankCard.h"
#import "User.h"
#import "DateBaseService.h"
@interface DateBaseService(){
	
}
@property (nonatomic ,strong)FMDatabaseQueue *dbQueue;
@end
@implementation DateBaseService

static DateBaseService *service;
+ (instancetype)shareDateBase{
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		service = [[DateBaseService alloc] init];
	});
	return service;
}

- (FMDatabaseQueue *)dbQueue{
	if (_dbQueue == nil) {
		NSString* docsdir = [NSSearchPathForDirectoriesInDomains( NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
		NSString *dbpath = [docsdir stringByAppendingPathComponent:@"account.sqlite"];
		NSLog(@"dbpath:%@",dbpath);
		_dbQueue = [FMDatabaseQueue databaseQueueWithPath:dbpath];
	}
	return _dbQueue;
}

- (BOOL)createDB{
	NSString *account_book_table = [[NSBundle mainBundle] pathForResource:@"account_book_table" ofType:@"sql"];
	NSString *bank_id_table = [[NSBundle mainBundle] pathForResource:@"bank_id_table" ofType:@"sql"];
	NSError *error;
	NSString *account_book_tableSql = [NSString stringWithContentsOfFile:account_book_table encoding:NSUTF8StringEncoding error:&error];
	NSString *bank_id_tableSql = [NSString stringWithContentsOfFile:bank_id_table encoding:NSUTF8StringEncoding error:&error];
	return [self createDBWith:account_book_tableSql]&&[self createDBWith:bank_id_tableSql];
}

- (BOOL)createDBWith:(NSString *)sql{
	__block BOOL flag;
	[self.dbQueue inDatabase:^(FMDatabase * _Nonnull db) {
		flag = [db executeUpdate:sql];
	}];
	return flag;
}
//插入一条记录
- (BOOL)insertAccount:(AccountRecord *)record{
	__block BOOL flag;
	[self.dbQueue inDatabase:^(FMDatabase * _Nonnull db) {
		flag = [db executeUpdate:@"insert into account_book_table (user_id,add_time,amount,from_account,to_account,note) values(?,date(),?,?,?,?);",record.user_id,record.amount,record.from_account,record.to_account,record.note];
	}];
	return flag;
}

- (NSArray<AccountRecord *> *)selectUser:(User *)user{
	NSMutableArray *arr = [[NSMutableArray alloc] init];
	[self.dbQueue inDatabase:^(FMDatabase * _Nonnull db) {
		FMResultSet *set = [db executeQuery:@"select * from account_book_table where user_id=?;",user.user_id];
		while ([set next]) {
			AccountRecord *re = [AccountRecord new];
			re.user_id = [set stringForColumn:@"user_id"];
			re.add_time = [set stringForColumn:@"add_time"];
			re.amount = [set stringForColumn:@"amount"];
			re.from_account = [set stringForColumn:@"from_account"];
			re.to_account = [set stringForColumn:@"to_account"];
			re.note = [set stringForColumn:@"note"];
			[arr addObject:re];
		}
	}];
	return arr;
}
@end
