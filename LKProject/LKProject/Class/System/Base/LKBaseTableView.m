//
//  使用前需引用DZNEmptyDataSet
//  LKBaseTableView.m
//  Dangdang
//
//  Created by Yuri on 16/5/5.
//  Copyright © 2016年 Eric MiAo. All rights reserved.
//

#import "LKBaseTableView.h"
#import <DZNEmptyDataSet/UIScrollView+EmptyDataSet.h>

@interface LKBaseTableView () <DZNEmptyDataSetSource, DZNEmptyDataSetDelegate>

@end

@implementation LKBaseTableView

- (instancetype)init {
    if (self = [super init]) {
        self.emptyDataSetDelegate = self;
        self.emptyDataSetSource = self;
        self.separatorColor = Rgb2UIColor(224.0, 224.0, 224.0);
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.frame = frame;
        self.emptyDataSetDelegate = self;
        self.emptyDataSetSource = self;
        self.separatorColor = Rgb2UIColor(224.0, 224.0, 224.0);
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    if (self = [super initWithFrame:frame style:style]) {
        self.emptyDataSetDelegate = self;
        self.emptyDataSetSource = self;
        self.separatorColor = Rgb2UIColor(224.0, 224.0, 224.0);
    }
    return self;
}


#pragma mark - DZNEmptyDataSet datasource && delegate
- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView {
    UIImage *image;
    switch (self.emptyStyle) {
        case BaseTableViewShowEmptyStyleNone:
            image = [UIImage imageNamed:@""];
            break;
        case BaseTableViewShowEmptyStyleNormal:
            image = [UIImage imageNamed:@"empty_noNormal"];
            break;
        default:
            break;
    }
    return image;
}

//- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
//    return YES;
//}
//
//- (BOOL)emptyDataSetShouldAllowTouch:(UIScrollView *)scrollView{
//    return YES;
//}
//
//- (void)emptyDataSet:(UIScrollView *)scrollView didTapView:(UIView *)view {
//    // Do something
//}
//
//- (void)emptyDataSet:(UIScrollView *)scrollView didTapButton:(UIButton *)button {
//    // Do something
//}

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    NSString *text = @"";
    switch (self.emptyStyle) {
        case BaseTableViewShowEmptyStyleNormal:
            break;
        default:
            break;
    }
    UIFont *font = [UIFont systemFontOfSize:15.f];
    return [[NSAttributedString alloc] initWithString:text attributes:@{NSFontAttributeName : font}];
}

- (NSAttributedString *)descriptionForEmptyDataSet:(UIScrollView *)scrollView {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] init];
    return attributedString;
}

//- (NSAttributedString *)buttonTitleForEmptyDataSet:(UIScrollView *)scrollView forState:(UIControlState)state {
//    NSString *text = @"Search on the App Store";
//    UIFont *font = [UIFont systemFontOfSize:16.0];
//    UIColor *textColor = [UIColor colorWithHex:(state == UIControlStateNormal) ? @"007aff" : @"c6def9"];
//    
//    NSMutableDictionary *attributes = [NSMutableDictionary new];
//    [attributes setObject:font forKey:NSFontAttributeName];
//    [attributes setObject:textColor forKey:NSForegroundColorAttributeName];
//    
//    return [[NSAttributedString alloc] initWithString:text attributes:attributes];
//}

- (UIColor *)backgroundColorForEmptyDataSet:(UIScrollView *)scrollView {
    return [UIColor whiteColor];
}

- (CGFloat)verticalOffsetForEmptyDataSet:(UIScrollView *)scrollView {
    return -10.0;
}

- (CGFloat)spaceHeightForEmptyDataSet:(UIScrollView *)scrollView {

    return 5.f;
}

#pragma mark - DZNEmptyDataSetDelegate Methods

- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
    return YES;
}

- (BOOL)emptyDataSetShouldAllowTouch:(UIScrollView *)scrollView {
    return YES;
}

- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView {
    return YES;
}

- (void)emptyDataSet:(UIScrollView *)scrollView didTapView:(UIView *)view {
    NSLog(@"%s",__FUNCTION__);
    if (self.tapViewBlock) {
        self.tapViewBlock(scrollView, view);
    }
}

- (void)emptyDataSet:(UIScrollView *)scrollView didTapButton:(UIButton *)button {
    
     NSLog(@"%s",__FUNCTION__);
}

- (void)emptyTableViewTapHandler:(TapViewHandler)handler {
    self.tapViewBlock = handler;
}

@end
