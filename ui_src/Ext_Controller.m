//
//  TestController.m
//  ULession9_exe
//
//  Created by lanou3g on 15/12/25.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import "Ext_Controller.h"

@interface Ext_Controller ()//()表示extension
{
    NSString *some_v;//可以声明变量,只能内部使用
}
//只能内部访问的属性
@property (nonatomic,strong) NSString *private_ext_name;
//只能内部访问的方法
-(void) private_ext_work:(NSInteger) k;


//重新定义此属性为readwrite，此时此属性对外是只读的，对内是读写的
@property (nonatomic,readwrite,strong) NSString *pub_property_str;
@end


@implementation Ext_Controller

-(void) public_self_work:(NSString *)name
{
    NSLog(@"name=%@",name);
    [self private_ext_work:99];
    self.private_ext_name=@"cat";
    self.pub_property_str=@"value123";//内部可以赋值
    NSLog(@"%@",self.pub_property_str);//内部可以取值
}
-(void)private_ext_work:(NSInteger) k //实现extention中声明的方法
{
    NSLog(@"private_ext_work:%ld",k+self.public_property_i);
}



@end
