//
//  TestController.h
//  ULession9_exe
//
//  Created by lanou3g on 15/12/25.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
    测试UIViewController的类的构造：ext_Controller.h和ext_Controller.m
    此@interface部分为类扩展（extension）。
    其被设计出来就是为了解决两个问题的，其一，定义类私有方法的地方。其二，实现public readonly,private readwrite的property（意思是在h头文件中定义一个属性对外是readonly的，但在类的内部希望是可读写的，所以可以在m源文件中的@interface部分重新定义此属性为readwrite，此时此属性对外是只读的，对内是读写的）。
 
    此外，也可在此部分申明变量和属性，但申明的变量，属性和方法均为私有的，只能够被当前类访问，相当于private
 
 */
@interface Ext_Controller : NSObject
//属性。为了外部可以访问
@property (nonatomic,assign) NSInteger public_property_i;

//属性.为了外部可以访问，只读。
//重新定义此属性为readwrite，此时此属性对外是只读的，对内是读写的
@property (nonatomic,readonly,strong) NSString *pub_property_str;

//方法。为了外部可以访问
-(void) public_self_work:(NSString *) name;
@end
