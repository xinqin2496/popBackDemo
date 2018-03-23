//
//  UIViewController+BackButtonHandler.h
//  SMS
//
//  Created by 郑文青 on 2017/5/17.
//  Copyright © 2017年 zhengwenqing’s mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BackButtonHandlerProtocol <NSObject>
@optional
-(BOOL)navigationShouldPopOnBackButton;
@end

@interface UIViewController (BackButtonHandler) <BackButtonHandlerProtocol>

@end
