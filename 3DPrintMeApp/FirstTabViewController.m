//
//  FirstTabViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FirstTabViewController.h"

@interface FirstTabViewController ()

@end

@implementation FirstTabViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Dimensions is selected by default.
    self.volumeField.hidden = true;
    self.volumeLabel.hidden = true;
    
    self.lengthField.keyboardType = UIKeyboardTypeDecimalPad;           //set keyboard types to decimal pad. Information from stackoverflow.com/questions/2079987
    self.widthField.keyboardType = UIKeyboardTypeDecimalPad;
    self.heightField.keyboardType = UIKeyboardTypeDecimalPad;
    self.volumeField.keyboardType = UIKeyboardTypeDecimalPad;
    
    self.data = [TabDataClass sharedInstance];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)selectControl:(id)sender {
    
    if (self.selectionController.selectedSegmentIndex == 0) {           //segment 0 is dimensions
        
        self.volumeLabel.hidden = true;                                 //hide volume elements
        self.volumeField.hidden = true;
        
        self.lengthField.hidden = false;                                //show dimensions elements
        self.widthField.hidden = false;
        self.heightField.hidden = false;
        self.lengthLabel.hidden = false;
        self.widthLabel.hidden = false;
        self.heightLabel.hidden = false;
        
    }
    
    if (self.selectionController.selectedSegmentIndex == 1) {
        
        self.lengthField.hidden = true;                                //hide dimensions elements
        self.widthField.hidden = true;
        self.heightField.hidden = true;
        self.lengthLabel.hidden = true;
        self.widthLabel.hidden = true;
        self.heightLabel.hidden = true;
    
        self.volumeLabel.hidden = false;                                 //show volume elements
        self.volumeField.hidden = false;
    }
}

- (IBAction)backgroundPressed:(id)sender {                              //Making inactive fields through background
    
    if ([self.lengthField isFirstResponder]){                           //for length field
        [self.lengthField resignFirstResponder];
    }
    
    if ([self.widthField isFirstResponder]){                            //for width field
        [self.widthField resignFirstResponder];
    }
    
    if ([self.heightField isFirstResponder]){                           //for height field
        [self.heightField resignFirstResponder];
    }
    
    if ([self.volumeField isFirstResponder]){                           //for volume field
        [self.volumeField resignFirstResponder];
    }
}


-(void) textFieldDidEndEditing:(UITextField *)textField {
    
    [self.data setLengthValue: self.lengthField.text];
    [self.data setWidthValue:self.widthField.text];
    [self.data setHeightValue:self.widthField.text];
    [self.data setVolumeValue:self.widthField.text];
}

#pragma mark Text Field Delegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    return YES;
}


@end
