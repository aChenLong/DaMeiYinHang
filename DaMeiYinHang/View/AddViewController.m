//
//  AddViewController.m
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/21.
//  Copyright © 2018年 陈龙. All rights reserved.
//
#import "DateBaseService.h"
#import "AddViewController.h"
#import "AccountRecord.h"
#import "User.h"
@interface AddViewController ()<UITextFieldDelegate>{
	
}
@property (weak, nonatomic) IBOutlet UITextField *to_account;
@property (weak, nonatomic) IBOutlet UITextField *note;
@property (weak, nonatomic) IBOutlet UITextField *from_account;
@property (weak, nonatomic) IBOutlet UITextField *amount;
@property (weak, nonatomic) IBOutlet UITextField *user_name;
@property (nonatomic ,assign)BOOL showAddAccountBook;
@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submit:(id)sender {
	AccountRecord *record = [AccountRecord new];
	record.user_id = _user_name.text;
	record.amount = _amount.text;
	record.from_account = _from_account.text;
	record.to_account = _to_account.text;
	record.note = _note.text;
	DateBaseService *service = [DateBaseService shareDateBase];
	if ([service insertAccount:record]){
		NSLog(@"insert succes");
	}
}
- (IBAction)select:(id)sender {
	User *user = [User new];
	user.user_id = @"user";
	user.phone = @"17710173945";
	user.name = @"chen long";
	DateBaseService *service = [DateBaseService shareDateBase];
	NSArray *records =  [service selectUser:user];
}

//点击添加账单记录按钮
- (void)addButtonPress:(UIViewController *)viewController{
	UIStoryboard *story = [UIStoryboard storyboardWithName:@"add" bundle:[NSBundle mainBundle]];
	AddViewController *addVC = [story instantiateViewControllerWithIdentifier:@"addAccoundVCId"];
	[[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:addVC animated:YES completion:^{}];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
	textField.text = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
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
