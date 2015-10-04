//
//  WeatherTableViewController.m
//  mid-unit-2-assessment
//
//  Created by Michael Kavouras on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherTableViewController.h"
#import "WeatherData.h"
#import "FirstViewController.h"

@interface WeatherTableViewController ()

@property (nonatomic) WeatherData *allData;

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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WeatherCell" forIndexPath:indexPath];
    
    NSDictionary *weatherData = [WeatherData allData][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[weatherData objectForKey:@"icon"]];
    cell.textLabel.text = weatherData[@"summary"];
    cell.detailTextLabel.text = [[NSDate dateWithTimeIntervalSince1970:[weatherData[@"time"] doubleValue]] description];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - Navigation

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSDictionary *weatherData = [WeatherData allData][indexPath.row];
    
    FirstViewController *vc = segue.destinationViewController;
    vc.allWeatherData = weatherData;
    
    
    
}

- (NSString *)objectForIndexPath:(NSIndexPath *)indexPath {
   
        NSArray *keys = [WeatherData allData];
    
        return keys[indexPath.row];
    }



@end
