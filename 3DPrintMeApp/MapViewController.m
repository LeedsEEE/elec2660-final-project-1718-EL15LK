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
    
    self.data = [[DataModel alloc] init];
    
    [self Markers];
    [self UpdateMap];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    self.location = [[CLLocationManager alloc] init];
    
}


- (IBAction)resetButtonPressed:(id)sender {
    
    self.actualMap.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(0.01, 0.01));
    self.sliderPosition.value = 0.01;

}

- (IBAction)zoomSlider:(UISlider *)sender {
    self.zoomValue = sender.value;
    [self UpdateMap];
}

-(void)UpdateMap{
    
    CLLocation *currentLocation = self.location.location;
    locationCoords = currentLocation.coordinate;
    self.actualMap.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(self.zoomValue, self.zoomValue));
}

-(void)Markers{
    
    int loopcount = 0;
    
    for (loopcount = 0; loopcount < self.data.hubs.count; loopcount++) {
        
        Hub *tempHub = self.data.hubs[loopcount];
        
        MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
        
        CLLocationCoordinate2D cords = CLLocationCoordinate2DMake(tempHub.longitude, tempHub.latitude);
        
        annotation.title = tempHub.name;
        annotation.coordinate = cords;
        annotation.subtitle = [NSString stringWithFormat:@"%@,%@",tempHub.city,tempHub.county];
        
        NSLog(@"%i", loopcount);
        
        
        [self.actualMap addAnnotation:annotation];
    }
}

@end
