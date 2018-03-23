//
//  ThreeViewController.m
//  MVVM
//
//  Created by 郑文青 on 2018/3/22.
//  Copyright © 2018年 zhengwenqing’s mac. All rights reserved.
//

#import "ThreeViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"点击下一页" forState:UIControlStateNormal];
    button.frame = CGRectMake(150, 300, 100, 30);
    [button addTarget:self action:@selector(touchUpInside) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.fd_prefersNavigationBarHidden = YES;
}

-(void)touchUpInside
{
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor whiteColor];
    vc.navigationItem.title = @"VC";
    UIBarButtonItem *back = [[UIBarButtonItem alloc]init];
    back.title = @"";
    self.navigationItem.backBarButtonItem = back;
    [self.navigationController pushViewController:vc animated:YES];
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
