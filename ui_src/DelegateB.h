//
//  SecondController.h
//  UILession8_exe
//
//  Created by lanou3g on 15/12/23.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol  myDelegate<NSObject>
-(void) write_foo:(NSString *) str;
@end


@interface DelegateB : NSObject //只定义，不实现协议中的方法，由A实现
@property (nonatomic,assign) id<myDelegate> delegate;
@end
