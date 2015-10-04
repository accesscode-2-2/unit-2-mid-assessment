//
//  WeatherViewController.m
//  mid-unit-2-assessment
//
//  Created by Felicia Weathers on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherViewController.h"
#import "WeatherData.h"
#import "WeatherTableViewController.h"

@interface WeatherViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *weatherImageView;
@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;

@end

@implementation WeatherViewController
- (void) viewDidLoad
{
    [super viewDidLoad];
    
    NSString *imageName = self.weatherData.name [@"icon"];
    self.weatherImageView.image = [UIImage imageNamed:imageName];

//    self.weatherImageView.image = [_weatherData.name objectForKey:@"icon"];
    self.weatherLabel.text = [_weatherData.name objectForKey:@"summary"];
//    self.label = [_weatherData.name objectForKey:@"summary"];
}

@end
