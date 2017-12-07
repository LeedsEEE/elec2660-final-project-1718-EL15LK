//
//  FirstTabViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabDataClass.h"

@interface FirstTabViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) TabDataClass *data;

//segment  control
@property (weak, nonatomic) IBOutlet UISegmentedControl *selectionController;

//labels for different parameters
@property (weak, nonatomic) IBOutlet UILabel *lengthLabel;
@property (weak, nonatomic) IBOutlet UILabel *widthLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *volumeLabel;

//different text fields
@property (weak, nonatomic) IBOutlet UITextField *lengthField;
@property (weak, nonatomic) IBOutlet UITextField *widthField;
@property (weak, nonatomic) IBOutlet UITextField *heightField;
@property (weak, nonatomic) IBOutlet UITextField *volumeField;


- (IBAction)selectControl:(id)sender;
- (IBAction)backgroundPressed:(id)sender;

@end
