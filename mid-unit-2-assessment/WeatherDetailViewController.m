//
//  WeatherDetailViewController.m
//  mid-unit-2-assessment
//
//  Created by Kaisha Jones on 10/4/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "WeatherDetailViewController.h"

@implementation WeatherDetailViewController 

- (void)viewDidLoad {

        [super viewDidLoad];
        
        // set the title of our navigation bar
        self.navigationItem.title = self.weatherName;
        
        // format the name so that it reflects the image
        // name format (no spaces, all lowercase)
        NSString *lowercaseWeatherName = [self.weatherName lowercaseString];
        
        NSString *weatherImageName = [lowercaseWeatherName stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        // get the image from our assets collection
        UIImage *imageView = [UIImage imageNamed:weatherImageName];
        
        // set the image property of our image view
        self.imageView.image = imageView;
        
        
        self.imageView.clipsToBounds = YES;
        self.weatherStatus.text = self.weatherName.name [@"icon"];
    
        NSString *imageName = self.weatherName.name [@"icon"];
        self.imageView.image = [UIImage imageNamed:imageView];
    

    
    
    
    
//    
//    if (self.segementedControl.selectedSegmentIndex == 0) {
//    NSString *pokemonName = [self objectForIndexPath:indexPath];
//    cell.textLabel.text = pokemonName;
//    cell.imageView.image = [UIImage imageNamed:[pokemonName lowercaseString]];
//    
//    return cell;
//    
//    //        NSString *pokemonName = self.model.aToZPokedex[indexPath.row];
//    //        cell.textLabel.text = pokemonName;
//} else {
//    NSArray *keys = [self.model.typePokedex allKeys];
//    NSString *key = [keys objectAtIndex:indexPath.section];
//    NSArray *values = [self.model.typePokedex objectForKey:key];
//    NSString *pokemonName = values[indexPath.row];
//    cell.textLabel.text = [pokemonName capitalizedString];
//    
//}
//
//return cell;


//      NSString *imageView = self.weatherName.name [@"icon"];
//        self.imageView.image = [UIImage imageNamed:imageView];
    
    
//    
//    
//    @property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
//    @property (weak, nonatomic) IBOutlet UIImageView *imageView;
//    
//
//        // Do any additional setup after loading the view.
//        
//        self.pokemonNameLabel.text = self.pokemonName;
//        NSString *imageName = [self.pokemon lowercaseString];
//        self.imageView.image = [UIImage imageNamed:imageName];
    
    
    }


@end
