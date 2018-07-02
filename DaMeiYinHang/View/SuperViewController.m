//
//  SuperViewController.m
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/22.
//  Copyright © 2018年 陈龙. All rights reserved.
//

#import "SuperViewController.h"

@interface SuperViewController ()

@end

@implementation SuperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//返回上一页
- (IBAction)backToPreviousViewController:(id)sender {
	if ([UIApplication sharedApplication].keyWindow.rootViewController.presentedViewController != nil) {
		[self dismissViewControllerAnimated:YES completion:NULL];
	}else{
		[self.navigationController popViewControllerAnimated:YES];
	}
}

//返回第一页
- (IBAction)backToRootViewController:(id)sender{
	[self.navigationController popToRootViewControllerAnimated:YES];
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
