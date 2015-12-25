//
//  ScrollControllerTest.m
//  ui_src
//
//  Created by lanou3g on 15/12/25.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import "ScrollControllerTest.h"

@interface ScrollControllerTest ()<UIScrollViewDelegate>
{
    UIScrollView *scroll;
    UIScrollView *sub_scroll;
}
@end

@implementation ScrollControllerTest

-(void)loadView
{
    [super loadView];
    sub_scroll=[[UIScrollView alloc] initWithFrame:CGRectMake(50, 50, 210, 210)];
    sub_scroll.backgroundColor=[UIColor grayColor];
    [sub_scroll setContentSize:CGSizeMake(400, 400)];
    sub_scroll.tag=108;
    sub_scroll.bounces=YES;
    
    UIImageView *imgView=[[UIImageView alloc] initWithFrame:CGRectMake(10, 50, 200, 200)];
    UIImage *img=[UIImage imageNamed:@"5.jpg"];
    imgView.image=img;
    [sub_scroll addSubview:imgView];
    //sub_scroll.contentOffset=CGPointMake(-100, -100);//相对于其子视图的坐标。负值表示远离子视图,正值表示接近覆盖子视图
    
    scroll=[[UIScrollView alloc] initWithFrame:CGRectMake(50, 50, 300, 300)];
    scroll.backgroundColor=[UIColor yellowColor];
    scroll.tag=109;
    scroll.bounces=YES;
    [scroll setContentSize:CGSizeMake(600, 600)];
    [scroll addSubview:sub_scroll];
    
    
    [self.view addSubview:scroll];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    scroll.delegate=self;
    sub_scroll.delegate=self;

}

//后
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    
    NSLog(@"%ld滑动减速结束",scrollView.tag);
}
//先
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    
    NSLog(@"%ld结束拖动,x=%.f,y=%.f",
          scrollView.tag,
          scrollView.contentOffset.x,scrollView.contentOffset.y);
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
