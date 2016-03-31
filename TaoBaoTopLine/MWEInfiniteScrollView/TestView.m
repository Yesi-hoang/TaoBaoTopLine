//
//  TestView.m
//  仿淘宝头条轮播
//
//  Created by Yesi on 16/3/22.
//  Copyright © 2016年 zhangguobing. All rights reserved.
//

#import "TestView.h"
@interface TestView()

@property (weak, nonatomic) IBOutlet UIButton *topButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomButton;

@end
@implementation TestView
- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    self.topButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    self.bottomButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
}

- (void)setTopModel:(DataModel *)topModel{
    _topModel = topModel;
    //  去掉\n
    NSString *title = [NSString stringWithFormat:@"%@", [topModel.title stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"]];
    [self.topButton setTitle:title forState:UIControlStateNormal];
    
}

- (void)setBottomModel:(DataModel *)bottomModel{
    _bottomModel = bottomModel;
    NSString *title = [NSString stringWithFormat:@"%@", [bottomModel.title stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"]];
    [self.bottomButton setTitle:title forState:UIControlStateNormal];
    
}
- (IBAction)topClick:(id)sender {
    NSLog(@"TopClicked. URL is: %@",self.topModel.link_url);
}
- (IBAction)bottomClick:(id)sender {
    NSLog(@"BottomClicked. URL is: %@",self.bottomModel.link_url);

}

@end
