//
//  MapViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.location = [[CLLocationManager alloc] init];
    
    CLLocation *currentLocation = self.location.location;
    CLLocationCoordinate2D locationCoords = currentLocation.coordinate;
    
    self.actualMap.delegate = self;
    self.location.delegate = self;
    
    [self.location requestWhenInUseAuthorization];
    self.actualMap.showsUserLocation = YES;
    self.actualMap.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(0.01, 0.01));
    
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
