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

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *actualMap;
@property (weak, nonatomic) IBOutlet UILabel *zoomLabel;
@property (strong, nonatomic) CLLocationManager *location;
@property (weak, nonatomic) IBOutlet UISlider *zoomSlider;
@property float zoomValue;

- (IBAction)zoomSlider:(UISlider *)sender;

@end
