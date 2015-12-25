//
//  SingleVC_Ext.h
//  ULession9_exe
//
//  Created by lanou3g on 15/12/25.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import "SingleVC.h"

@interface SingleVC ()
//()表示extension,ext.h文件声明的方法，要在@implementation SingleVC实现
{
    NSString *some_v;//可以声明变量
}
@property (nonatomic,strong) NSString *ext_name;
-(void) ext_work:(NSInteger) k;
@end

