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

//@property (nonatomic) NSDictionary *weatherDictionary;

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
    
    return cell;
}

#pragma mark - Navigation

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSDictionary *weatherData = [WeatherData allData][indexPath.row];
    
    FirstViewController *vc = segue.destinationViewController;
    vc.allWeatherData = weatherData;
    
    
    
}

//-(void)prepareForSegue:(UIStoryboardSegue*)segue sender:(id)sender
//{
//    if ([[segue identifier] isEqualToString:@"tableSegue"]){
//        
//        MODetailViewController *detailViewController = [[MODetailViewController alloc] init];
//        
//        NSIndexPath *selectedIndexPath = [self.monetiseTable indexPathForSelectedRow];
//        int selectedIndexPathAsInteger = selectedIndexPath.row;
//        
//        NSDictionary *dictionaryToPass = [[NSDictionary alloc] initWithDictionary:[self.feedArray objectAtIndex:selectedIndexPathAsInteger]];
//        
//        NSLog(@"%@", dictionaryToPass);
//        
//        detailViewController.passedDictionary = dictionaryToPass;
//    }
//}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    // Make sure we are dealing with the proper Segue
//    if ([segue.identifier isEqualToString:@"mySegueID"]) // ALWAYS use identifiers for your Segues
//    {
//        // Setup the destination ViewController
//        FirstViewController *vc = segue.destinationViewController;
//        
//        WeatherData *weatherDictionary = [[WeatherData alloc]init];
//        
//        self.weatherDictionary = self.allData;
//        
//        NSDictionary *weatherData = self.allData;
//
//        
//        // Set the dictionary object property on the ChildViewController
//        vc.newData = weatherDictionary;
//    }
//}

- (NSString *)objectForIndexPath:(NSIndexPath *)indexPath {
   
        NSArray *keys = [WeatherData allData];
    
        return keys[indexPath.row];
    }



@end
