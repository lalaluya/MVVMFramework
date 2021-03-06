//
//  ThirdViewManger.m
//  MVVMFramework
//
//  Created by yuantao on 16/1/8.
//  Copyright © 2016年 momo. All rights reserved.
//

#import "ThirdViewManger.h"
#import "ThirdModel.h"

@implementation ThirdViewManger

- (instancetype)init {
    if (self = [super init]) {
        ThirdView *thirdView = [ThirdView loadInstanceFromNib];
        thirdView.frame = CGRectMake(0, 66, [UIScreen mainScreen].bounds.size.width, 200);
        __weak typeof(thirdView) weakSelf =  thirdView;
        thirdView.btnClickBlock = ^() {
            weakSelf.testLabel.text = self.thirdModel.title;
            NSLog(@"点我干嘛----");
        };
        _thirdView = thirdView;
    }
    return self;
}

@end
