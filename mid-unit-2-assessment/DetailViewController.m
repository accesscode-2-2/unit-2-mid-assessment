//
//  DetailViewController.m
//  mid-unit-2-assessment
//
//  Created by Christian Maldonado on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *weatherLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageForWeather;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.weatherLabel.text = self.weather.name[@"summary"];

    NSString *imageName = self.weather.name [@"icon"];
    self.imageForWeather.image = [UIImage imageNamed:imageName];
    
}



@end
