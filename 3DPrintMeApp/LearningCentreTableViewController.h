//
//  LearningCentreTableViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "DetailViewController.h"
#import "MaterialDetailViewController.h"

@interface LearningCentreTableViewController : UITableViewController

@property (strong, nonatomic) DataModel *data;

@end
