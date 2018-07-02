//
//  UIViewController+Log.m
//  BaseProject
//
//  Created by chenlong on 2017/10/12.
//  Copyright © 2017年 陈龙. All rights reserved.
//

#import "UIViewController+Log.h"
#import <objc/runtime.h>
@implementation UIViewController (Log)
+ (void)load
{
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		Class class = [self class];
		// swizzleMethod
		swizzleMethod(class, @selector(viewDidLoad), @selector(aop_viewDidLoad));
		swizzleMethod(class, @selector(viewDidAppear:), @selector(aop_viewDidAppear:));
		swizzleMethod(class, @selector(viewWillAppear:), @selector(aop_viewWillAppear:));
		swizzleMethod(class, @selector(viewWillDisappear:), @selector(aop_viewWillDisappear:));
		swizzleMethod(class, @selector(viewDidDisappear:), @selector(aop_viewDidDisappear:));
	});
}

- (void)aop_viewDidAppear:(BOOL)animated {
	[self aop_viewDidAppear:animated];
	NSLog(@"%@(%@):viewDidAppear",self.class,self.title);
}

-(void)aop_viewWillAppear:(BOOL)animated {
	[self aop_viewWillAppear:animated];
	NSLog(@"%@(%@):viewWillAppear",self.class,self.title);
}

-(void)aop_viewWillDisappear:(BOOL)animated {
	[self aop_viewWillDisappear:animated];
	NSLog(@"%@(%@):viewWillDisappear",self.class,self.title);
}

- (void)aop_viewDidDisappear:(BOOL)animated{
	[self aop_viewDidDisappear:animated];
	NSLog(@"%@(%@):viewDidDisappear",self.class,self.title);
}
- (void)aop_viewDidLoad
{
	[self aop_viewDidLoad];
	NSLog(@"%@(%@):viewDidLoad",self.class,self.title);
}

void swizzleMethod(Class class, SEL originalSelector,SEL swizzledSelector)
{
	Method originalMethod = class_getInstanceMethod(class, originalSelector);
	Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
	BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
	if (didAddMethod)
	{
		class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
	}else{
		method_exchangeImplementations(originalMethod, swizzledMethod);
	}
}
@end
