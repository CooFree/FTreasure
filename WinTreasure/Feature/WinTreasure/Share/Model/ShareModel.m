//
//  ShareModel.m
//  WinTreasure
//
//  Created by Apple on 16/6/12.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "ShareModel.h"

@implementation ShareModel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.username = @"不中奖就卸载";
        self.timeSpan = @"1460152392234";
        self.productName = @"Apple iPhone6s Plus 128G 颜色 玫瑰金 + 小米充电宝一个";
        self.title = @"我真的中奖了！";
        self.productPeriod = @"302353252";
        self.content = @"个人觉得一直不是真的，觉得有什么内幕什么的，可是中了以后才觉得是真的，是真的，是真的是真的，是真的是真的，是真的是真的，是真的是真的，duang～duang～duang～duang～duang～";
        self.headImageUrl = @"http://admin.dears.cc/Upload/APIService/2016-04-13/20160413104022020_New.jpg";
        self.publishTime = @"1460152392234";
        self.participate = @"2000";
        self.luckyNumber = @"34255465";
    }
    return self;
}

- (NSMutableArray *)imageList {
    if (!_imageList) {
        _imageList = [NSMutableArray arrayWithObjects:@"http://admin.dears.cc/Upload/Material/image/20160503163543338_New.png",@"http://admin.dears.cc/Upload/Material/image/20160518173014178_New.jpg",@"http://admin.dears.cc/Upload/Material/image/20160426163721005_New.png", nil];
    }
    return _imageList;
}

@end
