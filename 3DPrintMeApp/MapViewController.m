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
    
    CLLocationCoordinate2D locationCoords;          
    
}

@end

@implementation MapViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.location = [[CLLocationManager alloc] init];
    self.location.delegate = self;
    
    //request user to allow location
    [self.location requestWhenInUseAuthorization];
    self.actualMap.showsUserLocation = YES;
    
    //set up initial view
    CLLocation *currentLocation = self.location.location;
    locationCoords = currentLocation.coordinate;
    self.actualMap.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(0.1, 0.1));
    
    self.data = [[DataModel alloc] init];
    
    [self Markers];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}

- (void) viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    
    
}


- (IBAction)resetButtonPressed:(id)sender {
    
    //reset the map zoom, region and the slider position to default when the user presses the reset view
    CLLocation *currentLocation = self.location.location;
    locationCoords = currentLocation.coordinate;
    self.actualMap.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(0.1, 0.1));

}

//method to set up pins
-(void)Markers{
    
    int loopcount;
    
    //set pins depending on the number of elements in the hubs array
    for (loopcount = 0; loopcount < self.data.hubs.count; loopcount++) {
        
        Hub *tempHub = self.data.hubs[loopcount];
        
        MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
        
        //create coordinates from the temporary data
        CLLocationCoordinate2D cords = CLLocationCoordinate2DMake(tempHub.longitude, tempHub.latitude);
        
        //annotations to appear when the user presses
        annotation.title = tempHub.name;
        annotation.coordinate = cords;
        annotation.subtitle = [NSString stringWithFormat:@"%@,%@",tempHub.city,tempHub.county];
        
        [self.actualMap addAnnotation:annotation];
    }
}

@end
