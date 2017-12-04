//
//  MapViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()
{
    
    CLLocationCoordinate2D locationCoords;          // Coordinates for Leeds: 53.806682 & -1.555033
    
}

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.actualMap.delegate = self;
    self.location.delegate = self;
    
    [self.location requestWhenInUseAuthorization];
    self.actualMap.showsUserLocation = YES;
    self.actualMap.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(0.01, self.zoomValue));
    
    
    self.zoomLabel.text = [NSString stringWithFormat:@"Zoom: %f",self.zoomValue];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    self.location = [[CLLocationManager alloc] init];
    
    [self UpdateMap];
    
}

- (IBAction)zoomSlider:(UISlider *)sender {
    
    self.zoomLabel.text = [NSString stringWithFormat:@"Zoom: %f",sender.value];
    self.zoomValue = sender.value;
    
    self.zoomLabel.text = [NSString stringWithFormat:@"Zoom: %f",self.zoomValue];
    
    [self UpdateMap];
}

-(void)UpdateMap{
    
    CLLocation *currentLocation = self.location.location;
    locationCoords = currentLocation.coordinate;
    self.actualMap.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(self.zoomValue, self.zoomValue));
    
}
@end
