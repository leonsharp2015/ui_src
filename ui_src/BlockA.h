//
//  ControllerA.h
//  UILession8_exe
//
//  Created by lanou3g on 15/12/23.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockA : NSObject //负责接收B修改后的值
@property (nonatomic,strong) NSString *b_value;
@end
