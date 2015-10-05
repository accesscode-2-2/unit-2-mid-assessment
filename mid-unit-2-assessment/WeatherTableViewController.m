//
//  WeatherTableViewController.m
//  mid-unit-2-assessment
//
//  Created by Michael Kavouras on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherTableViewController.h"
#import "WeatherData.h"
#import "WeatherDetailViewController.h"

@interface WeatherTableViewController ()

// created a property to access the class WeatherData
@property (nonatomic) WeatherData *allWeatherData;




@end

@implementation WeatherTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


#pragma mark - Table view data source



    
    
    


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray *keys = [WeatherData allData];
    
    return keys.count;
}





- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WeatherCellIdentifier" forIndexPath:indexPath];
    
    NSDictionary *weatherData = [WeatherData allData][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[weatherData objectForKey:@"icon"]];
    cell.textLabel.text = weatherData[@"summary"];
    cell.detailTextLabel.text = [[NSDate dateWithTimeIntervalSince1970:[weatherData[@"time"] doubleValue]] description];
    

    
    
    return cell;
}



#pragma mark - Navigation

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSDictionary *myWeatherData = [WeatherData allData][indexPath.row];
    
    WeatherTableViewController *vc = segue.destinationViewController;
    vc.allWeatherData = myWeatherData;
    
    
    
}




- (NSString *)objectForIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *keys = [WeatherData allData];
    
    return keys[indexPath.row];
}

@end
