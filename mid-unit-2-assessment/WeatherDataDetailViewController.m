//
//  WeatherDataDetailViewController.m
//  mid-unit-2-assessment
//
//  Created by Eric Sanchez on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherDataDetailViewController.h"
#import "WeatherData.h"
#import "WeatherTableViewController.h"

@interface WeatherDataDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *weatherImageView;


@end

@implementation WeatherDataDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	NSString *imageName = self.weather.name [@"icon"];
	self.weatherImageView.image = [UIImage imageNamed:imageName];
}






@end
