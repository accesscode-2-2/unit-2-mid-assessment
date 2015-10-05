//
//  MoreWeatherDetails.h
//  mid-unit-2-assessment
//
//  Created by Kaisha Jones on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreWeatherDetails : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *weatherForcastLabel;
@property (nonatomic) NSDictionary *allWeatherData;
@property (nonatomic) NSDictionary *finalForcast;

@end
