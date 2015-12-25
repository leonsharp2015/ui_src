//
//  RootViewController.m
//  ULession8-exe2
//
//  Created by lanou3g on 15/12/23.
//  Copyright © 2015年 lanou3g. All rights reserved.
//
#import "RootViewController.h"
#import "SingleVC.h"
#import "SingleVC+foo.h"
#import "SingleVC_Ext.h"
#import "Ext_Controller.h"

#import "DelegateA.h"
#import "DelegateB.h"

#import "BlockA.h"
#import "BlockB.h"

@interface RootViewController ()

@end

@implementation RootViewController

-(void)loadView
{
    [super loadView];
    self.rootView=[[RootView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view=self.rootView;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //代理测试
    //[self delegate_foo];
    //block测试
    [self block_foo];
    
}

//block测试
-(void) block_foo
{
    BlockA *a=[[BlockA alloc] init];
    BlockB *b=[[BlockB alloc] init];
    
    b.block_foo=^(NSString *str) {
        NSLog(@"%@",str);
        a.b_value=str;
    };
    //可以在b类内部实现
    b.block_foo(@"125");
    NSLog(@"%@",a.b_value);//得到a在b中改变后的值
}



//代理测试
-(void) delegate_foo
{
    DelegateA *one_control=[DelegateA new];
    DelegateB *second_control=[DelegateB new];
    
    second_control.delegate=one_control;
    [second_control.delegate write_foo:@"hello"];
}


//类的扩展测试
-(void) extention_test
{
    //测试标准类的extention模式
    SingleVC *vc=[SingleVC new];
    [vc self_work:@"aaa"];
    vc.self_i_value=5;
    NSString *str=[vc catagory_work];
    
    NSInteger ext_input=25;
    [vc ext_work:ext_input];
    vc.ext_name=@"tom";
    
    
    //测试UIViewController的extention模式
    Ext_Controller *tc1=[[Ext_Controller alloc] init];
    [tc1 public_self_work:@"bbbb"];
    tc1.public_property_i=89;
    NSLog(@"%@",tc1.pub_property_str);//该属性实例只能读，不能写
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
