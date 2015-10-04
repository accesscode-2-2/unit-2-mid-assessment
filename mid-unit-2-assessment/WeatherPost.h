//
//  WeatherPost.h
//  mid-unit-2-assessment
//
//  Created by Kaisha Jones on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherPost : NSObject


//@property(nonatomic) NSArray *tags;
//@property(nonatomic) NSInteger commentCount;
//@property(nonatomic) NSInteger likeCount;
//@property(nonatomic) NSString *username;
//@property(nonatomic) NSString *fullName;
//@property(nonatomic) NSDictionary *caption;


@property(nonatomic) NSArray *info;
@property(nonatomic) NSInteger sunriseTime;
@property(nonatomic) NSInteger sunsetTime;
@property(nonatomic) NSString *icon;
@property(nonatomic) NSString *summary;
@property(nonatomic) NSDictionary *caption;


-(instancetype)initWithJSON:(NSDictionary *)json;


@end
