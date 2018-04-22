//
//  TYBaseTextField.h
//  StrategyDemo
//
//  Created by 安天洋 on 2018/4/22.
//  Copyright © 2018年 TianYang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYTextFieldValidate.h"

@interface TYBaseTextField : UITextField

//抽象的策略类
@property (nonatomic, strong) TYTextFieldValidate * inputValidate;

//验证是否符合要求
-(BOOL) validate;

@end
