//
//  SecondViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabDataClass.h"

@interface SecondViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) TabDataClass *data;

//picker view
@property (weak, nonatomic) IBOutlet UIPickerView *pickerReason;


@end

