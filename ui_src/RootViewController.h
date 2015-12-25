//
//  RootViewController.h
//  ULession8-exe2
//
//  Created by lanou3g on 15/12/23.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootView.h"
@interface RootViewController : UIViewController
//需要RootViewController的实例访问,写在.h中
@property (nonatomic,strong) RootView *rootView;

@end
