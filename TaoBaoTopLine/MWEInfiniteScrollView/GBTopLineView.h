//
//  GBTopLineView.h
//  淘宝垂直跑马灯广告
//
//  Created by 张国兵 on 15/8/28.
//  Copyright (c) 2015年 zhangguobing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
@interface GBTopLineView : UIView

/** GBTopLineViewModel */
@property (nonatomic, strong) NSMutableArray *dataArr;

//停止定时器(界面消失前必须要停止定时器否则内存泄漏)
- (void)stopTimer;

@end
