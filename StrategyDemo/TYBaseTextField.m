//
//  TYBaseTextField.m
//  StrategyDemo
//
//  Created by 安天洋 on 2018/4/22.
//  Copyright © 2018年 TianYang. All rights reserved.
//

#import "TYBaseTextField.h"

@implementation TYBaseTextField

-(BOOL) validate{
    BOOL result = [self.inputValidate validateInputTextField:self];
    if (!result) {
        NSLog(@"%@",self.inputValidate.attributeInputStr);
    }
    return result;
}

@end
