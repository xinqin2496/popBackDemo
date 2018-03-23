//
//  ViewController.m
//  popBack
//
//  Created by 郑文青 on 2018/3/23.
//  Copyright © 2018年 zhengwenqing’s mac. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}
- (IBAction)touchUpInside:(id)sender {
    NextViewController *vc = [NextViewController new];
    UIBarButtonItem *back = [[UIBarButtonItem alloc]init];
    back.title = @"";
    self.navigationItem.backBarButtonItem = back;
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
