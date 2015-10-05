//
//  WeatherDetailViewController.h
//  mid-unit-2-assessment
//
//  Created by Kaisha Jones on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *weatherView;
@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;
@property (weak, nonatomic) IBOutlet UIButton *WeatherDetailButton;

@property (nonatomic) NSDictionary *allWeatherData;

@end
