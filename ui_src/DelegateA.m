//
//  OneController.m
//  UILession8_exe
//
//  Created by lanou3g on 15/12/23.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import "DelegateA.h"
#import "DelegateB.h"
@interface DelegateA ()<myDelegate>

@end

@implementation DelegateA
-(void)write_foo:(NSString *)str
{
    NSLog(@"DelegateA在实现write_foo,参数:%@",str);
}
@end
