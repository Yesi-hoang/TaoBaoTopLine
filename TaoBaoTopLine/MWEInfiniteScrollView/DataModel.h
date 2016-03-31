//
//  DataModel.h
//  仿淘宝头条轮播
//
//  Created by Yesi on 16/3/23.
//  Copyright © 2016年 zhangguobing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject
/** title */
@property (nonatomic, strong) NSString *title;
/** url */
@property (nonatomic, strong) NSString *link_url;

+ (instancetype)dataModelWithTitle:(NSString *)title url:(NSString *)url;

@end
