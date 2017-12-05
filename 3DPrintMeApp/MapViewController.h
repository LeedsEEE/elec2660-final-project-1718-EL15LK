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
@property (strong, nonatomic) CLLocationManager *location;
@property float zoomValue;
@property (weak, nonatomic) IBOutlet UISlider *sliderPosition;



- (IBAction)zoomSlider:(UISlider *)sender;
- (IBAction)resetButtonPressed:(id)sender;
- (IBAction)refreshButtonPressed:(id)sender;

@end
