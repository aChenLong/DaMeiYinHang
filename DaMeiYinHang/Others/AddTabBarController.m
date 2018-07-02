//
//  AddTabBarController.m
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/21.
//  Copyright © 2018年 陈龙. All rights reserved.
//
#import "AddViewController.h"
#import "AddTabBarController.h"

@interface AddTabBarController ()<UITabBarControllerDelegate>

@end

@implementation AddTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.delegate = self;
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
	if([item.title isEqualToString:@"添加"]){
		UIStoryboard *story = [UIStoryboard storyboardWithName:@"add" bundle:[NSBundle mainBundle]];
		AddViewController *addVC = [story instantiateViewControllerWithIdentifier:@"AddViewController"];
		[addVC addButtonPress:addVC];
	}
}

- (nullable id <UIViewControllerAnimatedTransitioning>)tabBarController:(UITabBarController *)tabBarController
					 animationControllerForTransitionFromViewController:(UIViewController *)fromVC
													   toViewController:(UIViewController *)toVC{
	if ([fromVC isKindOfClass:[UINavigationController class]]) {
		UINavigationController *fromVCNav = (UINavigationController *)fromVC;
		if ([fromVCNav.viewControllers.firstObject isKindOfClass:[AddViewController class]]) {
			UITabBarItem *item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:1];
			fromVC.tabBarItem = item;
		}
	}
	if ([toVC isKindOfClass:[UINavigationController class]]) {
		UINavigationController *toVCNav = (UINavigationController *)toVC;
		if ([toVCNav.viewControllers.firstObject isKindOfClass:[AddViewController class]]) {
			UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"添加"
															   image:[UIImage imageNamed:@"first"]
													   selectedImage:[UIImage imageNamed:@"first"]];
			toVC.tabBarItem = item;
		}
	}
	
	return NULL;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
