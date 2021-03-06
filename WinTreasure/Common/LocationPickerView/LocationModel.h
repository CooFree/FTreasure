//
//  LocationModel.h
//  iLight
//
//  Created by linitial on 5/11/15.
//  Copyright (c) 2015 linitial. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, LocationLevel) {
    LocationLevelProvince = 0, //省
    LocationLevelCity, //市
    LocationLevelDistrict, //区
    LocationLevelStreet //街道
};

@interface LocationModel : NSObject

@property (nonatomic) NSString *locationCode;
@property (nonatomic) NSString *locationId;
@property (nonatomic) NSString *locationPinyin;
@property (nonatomic) NSString *locationName;
@property (nonatomic) NSMutableArray *locationArray;
@property (nonatomic) NSMutableArray *provinceArray;
@property (nonatomic,strong) NSMutableArray *cityArray;
@property (nonatomic) NSMutableArray *districArray;

@property (assign) LocationLevel level;
- (id)initWithDictionary:(NSDictionary *)dic;

@end
