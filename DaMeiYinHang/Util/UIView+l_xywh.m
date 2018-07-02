//
//  UIView+xywh.m
//  BaseProject
//
//  Created by chenlong on 2017/10/11.
//  Copyright © 2017年 陈龙. All rights reserved.
//
#import "UIView+l_xywh.h"

@implementation UIView (l_xywh)
- (CGFloat)l_x{
	return self.frame.origin.x;
}

- (void)setL_x:(CGFloat)x{
	self.frame = (CGRect){x,self.l_y,self.l_size};
}

- (CGFloat)l_y{
	return self.frame.origin.y;
}

- (void)setL_y:(CGFloat)y{
	self.frame = (CGRect){self.l_x,y,self.l_size};
}

- (CGFloat)l_maxX{
	return self.l_x+self.l_width;
}

- (void)setL_maxX:(CGFloat)maxX{
	[self setL_x:maxX - self.l_width];
}

- (CGFloat)l_maxY{
	return self.l_y+self.l_height;
}

- (void)setL_maxY:(CGFloat)maxY{
	[self setL_x:maxY - self.l_height];
}

- (CGFloat)l_width{
	return self.frame.size.width;
}

- (void)setL_width:(CGFloat)width{
	self.frame = (CGRect){self.l_origin,width,self.l_height};
}

- (CGFloat)l_height{
	return self.frame.size.height;
}

- (void)setL_height:(CGFloat)height{
	self.frame = (CGRect){self.l_origin,self.l_width,height};
}

- (CGPoint)l_origin{
	return self.frame.origin;
}

- (void)setL_origin:(CGPoint)origin{
	self.frame = (CGRect){origin,self.l_size};
}

- (CGSize)l_size{
	return self.frame.size;
}

- (void)setL_size:(CGSize)size{
	self.frame = (CGRect){self.l_origin,size};
}

- (void)setL_centerX:(CGFloat)l_centerX{
	CGPoint center = self.center;
	self.center = CGPointMake(l_centerX, center.y);
}

- (CGFloat)l_centerY{
	return self.center.y;
}

- (void)setL_centerY:(CGFloat)l_centerY{
	CGPoint center = self.center;
	self.center = CGPointMake(center.y, l_centerY);
}

- (CGFloat)l_centerX{
	return self.center.x;
}

- (CGFloat)left{
	return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)left{
	self.frame = (CGRect){left,self.l_y,self.l_size};
}

- (CGFloat)right{
	return self.l_x+self.l_width;
}

- (void)setRight:(CGFloat)right{
	[self setL_x:right - self.l_width];
}

- (CGFloat)top{
	return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top{
	self.frame = (CGRect){self.l_x,top,self.l_size};
}

- (CGFloat)bottom{
	return self.l_y+self.l_height;
}

- (void)setBottom:(CGFloat)bottom{
	[self setL_x:bottom - self.l_height];
}

- (NSString *)frameDescription{
	return [NSString stringWithFormat:@"%@",NSStringFromCGRect(self.frame)];
}


@end
