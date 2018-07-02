//
//  FirstViewController.m
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/16.
//  Copyright © 2018年 陈龙. All rights reserved.
//

#import "AccountViewController.h"
#import "DateBaseService.h"
@interface AccountViewController ()

@end

@implementation AccountViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	DateBaseService *service = [[DateBaseService alloc] init];
	if (![service createDB]){
		NSLog(@"create fail");
	}
	UIView *red = [UIView new];
	red.frame = CGRectMake(10, 100, 100, 100);
	red.backgroundColor = [UIColor redColor];
	red.tag = 98;
	[self.view addSubview:red];
	
	UIView *blue = [UIView new];
	blue.frame = CGRectMake(10, 10, 30, 30);
	blue.tag = 99;
	blue.backgroundColor = [UIColor blueColor];
	[red addSubview:blue];
	
	UIView *orange = [UIView new];
	orange.tag = 101;
	orange.frame = CGRectMake(10, 300, 100, 100);
	orange.backgroundColor = [UIColor orangeColor];
	[self.view addSubview:orange];
	
	UIView *black = [UIView new];
	black.tag = 100;
	black.frame = CGRectMake(10, 10, 20, 20);
	black.backgroundColor = [UIColor blackColor];
	[orange addSubview:black];
	
	UIView * view = self.view.subviews.lastObject;
	NSLog(@"%@",@(view.tag));
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
