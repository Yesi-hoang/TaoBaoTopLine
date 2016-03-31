//
//  ViewController.m
//  TaoBaoTopLine
//
//  Created by Yesi on 16/3/31.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import "ViewController.h"
#import "DataModel.h"
#import "GBTopLineView.h"
@interface ViewController ()
/** dataSource */
@property (nonatomic, strong) NSMutableArray *datas;


@end

@implementation ViewController
#pragma mark - Lazy 
-(NSMutableArray *)datas{
    if (!_datas) {
        _datas = [NSMutableArray array];
    }
    return _datas;
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    [self createData];
    [self createToplineView];
    
   
}

// Create 10 datas
- (void)createData{
    
    for (int i = 0; i < 10; i++) {
        NSString *title = [NSString stringWithFormat:@"title %d",i];
        NSString *url;
        
        if (i % 2 == 0) {
           url = @"http://www.jianshu.com/p/a0d0c865bc7f";
        }else{
           url = @"http://v.ent.163.com/video/2015/10/O/D/VB4L2GPOD.html";
        }
        DataModel *model = [DataModel dataModelWithTitle:title url:url];
        
        [self.datas addObject:model];
    }
}
- (void)createToplineView{
    CGFloat width = 300;
    CGFloat height = 50;
    CGFloat x = ([UIScreen mainScreen].bounds.size.width - width) / 2;
    CGFloat y = ([UIScreen mainScreen].bounds.size.height - height) / 2;

    GBTopLineView *view = [[GBTopLineView alloc] initWithFrame:CGRectMake(x , y, width, height)];
    view.dataArr = self.datas;
    view.backgroundColor =[UIColor yellowColor];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
