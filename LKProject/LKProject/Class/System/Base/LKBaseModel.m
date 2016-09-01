//
//  LKBaseModel.m
//  Dangdang
//
//  Created by Yuri on 16/6/16.
//  Copyright © 2016年 LK. All rights reserved.
//

#import "LKBaseModel.h"

@implementation LKBaseModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"id"]) {
        self.ID = value;
    }
}

@end
