//
//  TYUserNameTextFieldValidate.m
//  StrategyDemo
//
//  Created by 安天洋 on 2018/4/22.
//  Copyright © 2018年 TianYang. All rights reserved.
//
//  用户昵称的策略  全为字母不能含有 数字和特殊字符

#import "TYUserNameTextFieldValidate.h"

@implementation TYUserNameTextFieldValidate

-(BOOL)validateInputTextField:(UITextField *)textField{
    if (textField.text.length == 0) {
        self.attributeInputStr = @"用户名不能为空";
        return nil;
    }
    // ^[a-zA-Z]*$ 从开头(^)到结尾($), 有效字符集([a-zA-Z])或者更多(*)个字符
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [[textField text] length])];
    // 进行判断,匹配不符合表示0的话, 就走下面的逻辑
    if (numberOfMatches == 0) {
        self.attributeInputStr = @"用户名不全是字母, 输入有误,请重新输入";
    } else {
        self.attributeInputStr = @"输入正确";
    }
    return self.attributeInputStr == nil ? YES : NO;    
}


@end
