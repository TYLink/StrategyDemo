//
//  ViewController.m
//  StrategyDemo
//
//  Created by 安天洋 on 2018/4/22.
//  Copyright © 2018年 TianYang. All rights reserved.
//

#import "ViewController.h"
#import "TYBaseTextField.h"
#import "TYUserNameTextFieldValidate.h"
#import "TYPasswordTextFieldValidate.h"


@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet TYBaseTextField *userName;

@property (weak, nonatomic) IBOutlet TYBaseTextField *password;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.userName.delegate = self;
    self.password.delegate = self;
    
    // 初始化
    self.userName.inputValidate = [TYUserNameTextFieldValidate new];
    self.password.inputValidate = [TYPasswordTextFieldValidate new];
}

- (IBAction)chark:(id)sender {
    [self.view endEditing:YES];
}

-(void) textFieldDidEndEditing:(UITextField *)textField{
    if ([textField isKindOfClass:[TYBaseTextField class]]) {
        [(TYBaseTextField *)textField validate];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
