//
//  FirstTabViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstTabViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *selectionController;
@property (weak, nonatomic) IBOutlet UILabel *selectionLabel;


- (IBAction)selectControl:(id)sender;

@end
