//
//  WeatherDataDetailViewController.h
//  mid-unit-2-assessment
//
//  Created by Eric Sanchez on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherData.h"

@interface WeatherDataDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) WeatherData *weather;
@property (nonatomic) NSString	*name;

@end
