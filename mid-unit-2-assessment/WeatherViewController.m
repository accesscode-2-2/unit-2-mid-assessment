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
#import "WeatherSummaryViewController.h"

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
    
    self.weatherLabel.text = [_weatherData.name objectForKey:@"summary"];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // access the destinationViewController
    WeatherSummaryViewController *vc = segue.destinationViewController;
    
    //set the forecast property on the destinationViewController
    vc.weatherData = self.weatherData;
    
}


@end
