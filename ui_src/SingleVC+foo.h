//
//  SingleVC+foo.h
//  ULession9_exe
//
//  Created by lanou3g on 15/12/25.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import "SingleVC.h"

@interface SingleVC (foo) //foo可以为任意字符
@property (nonatomic,strong) NSString *catagory_name;//category不可定义变量，但可以定义属性
-(NSString *) catagory_work;
@end
