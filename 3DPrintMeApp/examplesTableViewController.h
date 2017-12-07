//
//  examplesTableViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "AppConstants.h"
#import "ExampleModel.h"
#import "modelViewer.h"

@interface examplesTableViewController : UITableViewController

@property (strong, nonatomic) DataModel *data;

@end
