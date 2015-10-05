//
//  WeatherDetailViewController.m
//  mid-unit-2-assessment
//
//  Created by Kaisha Jones on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherDetailViewController.h"
#import "WeatherData.h"
#import "MoreWeatherDetails.h"

@implementation WeatherDetailViewController 

- (void)viewDidLoad {

        [super viewDidLoad];
    
    self.weatherLabel.text = [self.allWeatherData objectForKey:@"summary"];

    self.weatherView.image = [UIImage imageNamed:[self.allWeatherData objectForKey:@"icon"]];
    
    
    
}



- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
   
    
    MoreWeatherDetails *vc = segue.destinationViewController;
    vc.finalForcast = self.allWeatherData;
    
}


@end
