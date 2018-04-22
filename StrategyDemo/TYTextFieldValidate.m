//
//  TYTextFieldValidate.m
//  StrategyDemo
//
//  Created by 安天洋 on 2018/4/22.
//  Copyright © 2018年 TianYang. All rights reserved.
//

#import "TYTextFieldValidate.h"

@implementation TYTextFieldValidate
// 策略抽象类  
-(BOOL)validateInputTextField:(UITextField *)textField{
    return NO;
}
@end
