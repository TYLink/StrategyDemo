//
//  TYTextFieldValidate.h
//  StrategyDemo
//
//  Created by 安天洋 on 2018/4/22.
//  Copyright © 2018年 TianYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYTextFieldValidate : NSObject
// 输入YES 表示验证通过  NO 表示验证不通过
-(BOOL)validateInputTextField:(UITextField *)textField;

@property (nonatomic, copy) NSString * attributeInputStr;

@end
