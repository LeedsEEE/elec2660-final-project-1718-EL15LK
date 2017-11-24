//
//  FirstViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lengthLabel;                 //Labels and Text Fields that will be used for dimensions input
@property (weak, nonatomic) IBOutlet UILabel *widthLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UITextField *lengthTextField;
@property (weak, nonatomic) IBOutlet UITextField *widthTextField;
@property (weak, nonatomic) IBOutlet UITextField *heightTextField;

@property (weak, nonatomic) IBOutlet UITextField *volumeTextField;         //Label and Text Field that will be used for volume input
@property (weak, nonatomic) IBOutlet UILabel *volumeLabel;


- (IBAction)switchPressed:(UISwitch *)sender;                              //Switch used to select the type of input

@end

