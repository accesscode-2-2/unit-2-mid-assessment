//
//  SecondViewController.m
//  mid-unit-2-assessment
//
//  Created by Umar on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *string = [NSString stringWithFormat:@"Sunrise Time: %@", [self.lastWeatherData objectForKey:@"sunriseTime"]];
    NSString *stringTwo = [NSString stringWithFormat:@"Sunset Time: %@", [self.lastWeatherData objectForKey:@"sunsetTime"]];

    self.labelOne.text = [self.lastWeatherData objectForKey:@"summary"];
    self.labelTwo.text = string;
    self.labelThree.text = stringTwo;

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
