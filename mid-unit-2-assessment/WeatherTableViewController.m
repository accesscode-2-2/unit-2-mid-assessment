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
@property (nonatomic) WeatherData *weatherData;
@property (nonatomic)NSMutableArray *weather;



@end

@implementation WeatherTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.weatherData = [[WeatherData alloc]init];
//    [self.weather allData];
    
    self.navigationItem.title = @"Weather";
    
    self.weather = [[NSMutableArray alloc] init];

    for (NSString *name in [WeatherData allData]) {
        WeatherData *weather = [[WeatherData alloc]init];
        weather.name = name;
        [self.weather addObject:weather];
    
        
    }
    
}


#pragma mark - Table view data source



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    // what we're passing
    NSString *weather = self.weather[selectedIndexPath.row];
    
    // where we're passing it
    WeatherDetailViewController *viewController = segue.destinationViewController;
    
    // pass it!
    viewController.weatherName = weather;
    
    
    
    
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSString *weatherName = [self objectForIndexPath:indexPath];
    
    WeatherTableViewController *detailViewController = segue.destinationViewController;
    detailViewController.weatherName = [weatherName capitalizedString];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
//    return self.weatherData allData.count;
    
    return self.weather.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WeatherCellIdentifier" forIndexPath:indexPath];
    
    NSDictionary *weatherData = [WeatherData allData][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[weatherData objectForKey:@"icon"]];
    cell.textLabel.text = weatherData[@"summary"];
    cell.detailTextLabel.text = [[NSDate dateWithTimeIntervalSince1970:[weatherData[@"time"] doubleValue]] description];
    
//    cell.textLabel.text = self.weatherData[indexPath.row];
//    //cell.textLabel.text = self.weather[indexPath.row];
//    weatherData *weather = [self.countries objectAtIndex:indexPath.row];
//    
//    cell.textLabel.text = country.name;
//    cell.imageView.image = [country image];
    
    
    
//    
//    for (NSString *name in [WeatherData allData]) {
//        WeatherData *weather = [[WeatherData alloc]init];
//        weather.name = name;
//        [self.weather addObject:weather];
//        
//        // initialize the data in self.countries
//        for (NSString *name in [WFCountry allCountries]) {
//            WFCountry *country = [[WFCountry alloc] init];
//            country.name = name;
//            country.imageURLString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
//            [self.countries addObject:country];
//        }
    
    
    
    
    
 
    
    return cell;
}



@end
