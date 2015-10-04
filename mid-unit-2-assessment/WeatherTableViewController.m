//
//  WeatherTableViewController.m
//  mid-unit-2-assessment
//
//  Created by Michael Kavouras on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherTableViewController.h"
#import "WeatherData.h"
#import "WeatherViewController.h"

@interface WeatherTableViewController ()

//@property (nonatomic) WeatherData *weatherData;
@property (nonatomic) NSMutableArray *weather;

@end

@implementation WeatherTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.weatherData = [[WeatherData alloc] init];
    self.weather = [[NSMutableArray alloc] init];
                    
                    
    // initialize the data
    for (NSString *name in [WeatherData allData])
    {
        WeatherData *weatherData = [[WeatherData alloc] init];
        weatherData.name = name;
        
        [self.weather addObject:weatherData];
    }
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // determine the section and row for our selected cell
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    // what we're passing
    WeatherTableViewController *weatherData = [self.weather objectAtIndex:indexPath.row];
    
    // access the destinationViewController
    WeatherViewController *vc = segue.destinationViewController;
    
    //set the forecast property on the destinationViewController
    vc.weatherData = weatherData;
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.weather.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
    NSDictionary *weatherData = [WeatherData allData][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[weatherData objectForKey:@"icon"]];
    cell.textLabel.text = weatherData[@"summary"];
    cell.detailTextLabel.text = [[NSDate dateWithTimeIntervalSince1970:[weatherData[@"time"] doubleValue]] description];
    return cell;
}

@end