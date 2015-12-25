//
//  ControllerB.h
//  UILession8_exe
//
//  Created by lanou3g on 15/12/23.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^FooBlock)(NSString *);

@interface BlockB : NSObject

//属性self.block_foo=代码块
@property (nonatomic,copy) FooBlock block_foo;

//self.block_foo() 执行代码块

@end
