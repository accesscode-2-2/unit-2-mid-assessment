//
//  WeatherSummaryViewController.m
//  mid-unit-2-assessment
//
//  Created by Felicia Weathers on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherSummaryViewController.h"
#import "WeatherViewController.h"   
#import "WeatherData.h"

@interface WeatherSummaryViewController ()

@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;

@end

@implementation WeatherSummaryViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.topLabel.text = [_weatherData.name objectForKey:@"summary"];
    self.middleLabel.text = [NSString stringWithFormat:@"Sunrise Time: %@", [_weatherData.name objectForKey:@"sunriseTime"]];
    self.bottomLabel.text = [NSString stringWithFormat:@"Sunset Time: %@", [_weatherData.name objectForKey:@"sunsetTime"]];

}


@end
