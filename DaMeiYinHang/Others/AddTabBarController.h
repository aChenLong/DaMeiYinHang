//
//  AddTabBarController.h
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/21.
//  Copyright © 2018年 陈龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddTabBarController : UITabBarController
@property (nonatomic ,weak)IBOutlet UIViewController *findVC;
@property (nonatomic ,weak)IBOutlet UIViewController *accountVC;
@property (nonatomic ,weak)IBOutlet UIViewController *addVC;
@end
