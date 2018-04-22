//
//  TYPasswordTextFieldValidate.m
//  StrategyDemo
//
//  Created by 安天洋 on 2018/4/22.
//  Copyright © 2018年 TianYang. All rights reserved.
//

// 密码的策略 全部为数字 不能为空 不能含有字母和特殊字符


#import "TYPasswordTextFieldValidate.h"

@implementation TYPasswordTextFieldValidate

- (BOOL)validateInputTextField:(UITextField *)textField {
    if (textField.text.length == 0) {
        self.attributeInputStr = @"密码不能是空的";
        return nil;
    }
    // ^[a-zA-Z]*$ 从开头(^)到结尾($), 有效字符集([a-zA-Z])或者更多(*)个字符
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [[textField text] length])];
    
    if (numberOfMatches == 0) {
        self.attributeInputStr = @"密码不全是数字, 输入有误,请重新输入";
    } else {
        self.attributeInputStr = @"输入正确";
    }
    return self.attributeInputStr == nil ? YES : NO;
}


@end
