//
//  VerifyCodeViewController.m
//  WinTreasure
//
//  Created by Apple on 16/6/24.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "VerifyCodeViewController.h"
#import "PasswordViewController.h"
#import "VerifyButton.h"

@interface VerifyCodeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UITextField *verifyTextField;
@property (weak, nonatomic) IBOutlet VerifyButton *verifyButton;

@end

@implementation VerifyCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"快速注册";
    [self configs];
    [_verifyButton beginTimer];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [_verifyButton stoptimer];
}

- (void)configs {
    _numberLabel.text = [NSString stringWithFormat:@"您的手机号：%@",_number];

}

- (IBAction)getVerifyCode {
    [_verifyButton beginTimer];
}

- (IBAction)submitVerifyCode {
    if (![WTSystemInfo validateVerifyCode:_verifyTextField.text]) {
        [SVProgressHUD showInfoWithStatus:@"请输入短信验证码"];
        return;
    }
    [self setBackItem];
    PasswordViewController *vc = [[PasswordViewController alloc]init];
    vc.number = _number;
    [self hideBottomBarPush:vc];
}

- (void)dealloc {
    [_verifyButton stoptimer];
    NSLog(@"%s",__func__);
}

@end
