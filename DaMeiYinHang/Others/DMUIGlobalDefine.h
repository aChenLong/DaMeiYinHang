//
//  DMUIGlobalDefine.h
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/18.
//  Copyright © 2018年 陈龙. All rights reserved.
//

#ifndef DMUIGlobalDefine_h
#define DMUIGlobalDefine_h

#define SCREEN_WIDTH    ([UIScreen mainScreen].bounds.size.width)

#define SCREEN_HEIGHT    ([UIScreen mainScreen].bounds.size.height)

//判断是否iPhone X
#define IS_iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

#define STATEBARHEIGHT CGRectGetHeight([[UIApplication sharedApplication] statusBarFrame])

#define NAVIGATIONBARHEIGHT 44

// Status bar & navigation bar height.

#define  kStatusBarAndNavigationBarHeight  (IS_iPhoneX ? 88.f : 64.f)

#define  kTabbarSafeBottomMargin         (IS_iPhoneX ? 34.f : 0.f)

#define TABBARHEIGHT (IS_iPhoneX?83:49)

#define IOS7_OR_LATER ([[[UIDevice currentDevice] systemVersion] intValue] >= 7)

//颜色 宏定义
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define ColorRGB(R,G,B) [UIColor colorWithRed:(float)R/255.0 green:(float)G/255.0 blue:(float)B/255.0 alpha:1.0]

#define FontSize(X) [UIFont systemFontOfSize:X]
#endif /* DMUIGlobalDefine_h */
