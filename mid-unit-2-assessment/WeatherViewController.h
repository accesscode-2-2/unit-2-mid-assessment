//
//  WeatherViewController.h
//  mid-unit-2-assessment
//
//  Created by Felicia Weathers on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherData.h"

@interface WeatherViewController : UIViewController

@property (nonatomic) WeatherData *weatherData;
@property (nonatomic) NSString *label;

@end
