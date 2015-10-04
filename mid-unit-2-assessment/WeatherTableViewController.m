//
//  WeatherTableViewController.m
//  mid-unit-2-assessment
//
//  Created by Michael Kavouras on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherTableViewController.h"
#import "WeatherData.h"
#import "DetailViewController.h"

@interface WeatherTableViewController ()

@property (nonatomic) NSMutableArray *theWeather;

@end

@implementation WeatherTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Look ma...WEATHER!";
    
    self.theWeather = [[NSMutableArray alloc] init];
    
    for (NSDictionary *name in [WeatherData allData]) {
        WeatherData *weather1 = [[WeatherData alloc] init];
        weather1.name = name;
       // weather1.imageURLString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
        [self.theWeather addObject:weather1];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
   
    WeatherData *weather2 = [self.theWeather objectAtIndex:indexPath.row];
    
    DetailViewController *vc = segue.destinationViewController;
    
    vc.weather = weather2;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.theWeather.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WeatherCellIdentifier" forIndexPath:indexPath];
   
    
    
    NSDictionary *weatherData = [WeatherData allData][indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:[weatherData objectForKey:@"icon"]];
    
    cell.textLabel.text = weatherData[@"summary"];
    
    cell.detailTextLabel.text = [[NSDate dateWithTimeIntervalSince1970:[weatherData[@"time"] doubleValue]] description];
    
    return cell;
}
    


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    WeatherData *weather4 = self.theWeather[indexPath.row];
    
    
    DetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
   
    detailViewController.weather = weather4;
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
}

@end
