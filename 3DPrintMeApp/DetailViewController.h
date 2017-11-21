//
//  DetailViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "process.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *processName;

@property (strong,nonatomic) process *process;

@end
