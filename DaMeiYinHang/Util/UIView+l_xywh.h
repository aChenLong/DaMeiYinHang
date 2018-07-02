//
//  UIView+xywh.h
//  BaseProject
//
//  Created by chenlong on 2017/10/11.
//  Copyright © 2017年 陈龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (l_xywh)
@property (nonatomic , assign)CGFloat l_x;
@property (nonatomic , assign)CGFloat l_y;
@property (nonatomic , assign)CGFloat l_maxX;
@property (nonatomic , assign)CGFloat l_maxY;
@property (nonatomic , assign)CGFloat l_width;
@property (nonatomic , assign)CGFloat l_height;
@property (nonatomic , assign)CGPoint l_origin;
@property (nonatomic , assign)CGSize  l_size;
@property (nonatomic , assign)CGFloat l_centerX;
@property (nonatomic , assign)CGFloat l_centerY;

@property (nonatomic , assign)CGFloat left;
@property (nonatomic , assign)CGFloat right;
@property (nonatomic , assign)CGFloat top;
@property (nonatomic , assign)CGFloat bottom;

- (NSString *)frameDescription;
@end
