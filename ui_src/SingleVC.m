//
//  SingleVC.m
//  ULession9_exe
//
//  Created by lanou3g on 15/12/25.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import "SingleVC.h"
#import "SingleVC_Ext.h"
@implementation SingleVC
-(void) self_work:(NSString *)name
{
    NSLog(@"name=%@",name);
}
-(void)ext_work:(NSInteger) k //实现extention(SingleVC_Ext.h)中声明的方法
{
    NSLog(@"ext_work:%ld",k+self.self_i_value);
}
@end
