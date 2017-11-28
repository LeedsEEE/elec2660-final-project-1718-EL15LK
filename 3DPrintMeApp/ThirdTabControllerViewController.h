//
//  ThirdTabControllerViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabDataClass.h"

@interface ThirdTabControllerViewController : UIViewController

@property (strong, nonatomic) TabDataClass *data;

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end
