//
//  MapViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "DataModel.h"

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

//map view
@property (weak, nonatomic) IBOutlet MKMapView *actualMap;

//location
@property (strong, nonatomic) CLLocationManager *location;

@property (strong, nonatomic) DataModel *data;
@property float zoomValue;

- (IBAction)resetButtonPressed:(id)sender;

@end
