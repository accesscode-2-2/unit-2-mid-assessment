//
//  WeatherTableViewController.m
//  mid-unit-2-assessment
//
//  Created by Michael Kavouras on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherTableViewController.h"
#import "WeatherData.h"
#import "WeatherDataDetailViewController.h"

@interface WeatherTableViewController ()
@property (nonatomic) WeatherData *weatherData;
@property (nonatomic) NSMutableArray *weatherdict;


@end

@implementation WeatherTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.weatherData = [[WeatherData alloc] init];
	self.weatherdict = [[NSMutableArray alloc] init];//jerk
	
	self.navigationItem.title = @"Weather";
	
	
	for (NSString *name in [WeatherData allData]) {
		WeatherData *weather = [[WeatherData alloc] init];
		weather.name = name;
		[self.weatherdict addObject:weather];
		

	
	}
	}
    


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSLog(@"number of rows in section %lu", section);
    return self.weatherdict.count;
	
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
    NSDictionary *weatherData = [WeatherData allData][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[weatherData objectForKey:@"icon"]];
    cell.textLabel.text = weatherData[@"summary"];
    cell.detailTextLabel.text = [[NSDate dateWithTimeIntervalSince1970:[weatherData[@"time"] doubleValue]] description];
    return cell;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
WeatherData *WeatherStuff = [self.weatherdict objectAtIndex:indexPath.row];
WeatherDataDetailViewController	*viewController = segue.destinationViewController;
	viewController.weather = WeatherStuff;
}


@end
