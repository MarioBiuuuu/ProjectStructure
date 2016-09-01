//
//  BaseViewController.m
//  Dangdang
//
//  Created by Eric MiAo on 16/3/7.
//  Copyright © 2016年 Eric MiAo. All rights reserved.
//

#import "LKBaseViewController.h"

@implementation LKBaseViewController
- (instancetype)initWithChildViewController:(BOOL)isChild {
    self = [super init];
    if (self) {
        self.isChild = isChild;
        if (isChild) {
            self.hidesBottomBarWhenPushed = YES;
//            [self createBackBarButton];
        }

    }
    return self;
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.navigationController.interactivePopGestureRecognizer.delaysTouchesBegan=NO;

    self.navigationController.navigationBar.barTintColor = BASE_COLOR;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName :[UIColor whiteColor]}];
    self.view.backgroundColor = Rgb2UIColor(245, 245, 245);
    if([self isTabBarChildViewController])
    {
        self.tabBarController.automaticallyAdjustsScrollViewInsets = NO;
        
    }
    else
    {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    self.edgesForExtendedLayout=UIRectEdgeNone;
}

/**
 是否为TabBarViewController的子Controller
 */
-(BOOL)isTabBarChildViewController
{
    if(self.isChild)
    {
        return YES;
    }
    return NO;
}
- (void)createBackBarButton
{

    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 44)];
    [backBtn setImage:[UIImage imageNamed:@"iconfont-fanhui"] forState:UIControlStateNormal];
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    backBtn.titleLabel.font = [UIFont systemFontOfSize:16.f];
    backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    backBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    [backBtn addTarget:self action:@selector(PopGoBack) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
}

- (void)PopGoBack {
    [self.navigationController popViewControllerAnimated:YES];
}

- (BOOL)navigationShouldPopOnBackButton {

//    [self.navigationController popViewControllerAnimated:YES];
    return YES;//返回NO 不会执行
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait ;
}
- (BOOL)shouldAutorotate
{
    return YES;
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

@end
