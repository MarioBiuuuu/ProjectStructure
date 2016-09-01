//
//  BaseTableView.h
//  Dangdang
//
//  Created by Yuri on 16/5/5.
//  Copyright © 2016年 Eric MiAo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LKBaseTableViewShowEmptyStyle) {
    LKBaseTableViewShowEmptyStyleNone,
    LKBaseTableViewShowEmptyStyleNormal,//默认从0开始
};

typedef void(^TapViewHandler)(UIScrollView *scroollView, UIView *tapView);

@interface LKBaseTableView : UITableView
@property (nonatomic, assign) LKBaseTableViewShowEmptyStyle emptyStyle;
@property (nonatomic, copy) TapViewHandler tapViewBlock;
- (void)emptyTableViewTapHandler:(TapViewHandler)handler;

@end
