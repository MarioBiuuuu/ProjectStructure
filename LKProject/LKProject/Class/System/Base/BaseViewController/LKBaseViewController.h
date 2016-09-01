//
//  BaseViewController.h
//  Dangdang
//
//  Created by Eric MiAo on 16/3/7.
//  Copyright © 2016年 Eric MiAo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UINavigationController+FDFullscreenPopGesture.h"
#import "UIViewController+BackButtonHandler.h"
#import "UINavigationController_ShouldPopOnBackButton.h"

@interface LKBaseViewController : UIViewController
@property (nonatomic,assign)BOOL isChild;

- (instancetype)initWithChildViewController:(BOOL)isChild;
- (void)PopGoBack;
- (void)createBackBarButton;

@end
