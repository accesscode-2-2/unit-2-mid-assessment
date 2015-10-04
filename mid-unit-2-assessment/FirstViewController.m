//
//  FirstViewController.m
//  mid-unit-2-assessment
//
//  Created by Umar on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "FirstViewController.h"
#import "WeatherData.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *weatherView;
@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.weatherLabel.text = [self.allWeatherData objectForKey:@"summary"];
////
    self.weatherView.image = [UIImage imageNamed:[self.allWeatherData objectForKey:@"icon"]];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
