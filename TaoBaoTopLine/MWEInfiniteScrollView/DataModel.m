//
//  DataModel.m
//  仿淘宝头条轮播
//
//  Created by Yesi on 16/3/23.
//  Copyright © 2016年 zhangguobing. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

+ (instancetype)dataModelWithTitle:(NSString *)title url:(NSString *)url{
    DataModel *model = [[DataModel alloc] init];
    model.title = title;
    model.link_url = url;
    return model;
}

@end
