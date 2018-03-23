//
//  NextViewController.m
//  MVVM
//
//  Created by 郑文青 on 2018/3/22.
//  Copyright © 2018年 zhengwenqing’s mac. All rights reserved.
//

#import "NextViewController.h"
#import "UIViewController+BackButtonHandler.h"
#import "ThreeViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.title = @"Next";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Next" forState:UIControlStateNormal];
    button.frame = CGRectMake(150, 300, 100, 30);
    [button addTarget:self action:@selector(touchUpInside) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void)touchUpInside
{
    ThreeViewController *vc = [ThreeViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"count----%ld",(long)count);
    self.fd_interactivePopDisabled = YES;
}
static NSInteger count = 0;
-(BOOL)navigationShouldPopOnBackButton
{
    if (count == 0) {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"获取返回的点击事件" message:@"" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alertView show];
        count++;
        self.fd_interactivePopDisabled = NO;
        return NO;
    }
    return YES;
}
-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    count = 0;
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
