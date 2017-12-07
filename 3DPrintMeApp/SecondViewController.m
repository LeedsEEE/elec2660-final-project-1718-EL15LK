//
//  SecondViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "SecondViewController.h"
#import "AppConstants.h"

@interface SecondViewController ()
{
    NSArray *choices;                                                              // define 'choices' as an array for storing options
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Choices are predetermined, hence they will be stored in an array as strings
    choices = @[@"Fun Print",@"Aesthetics",@"Visual Prototype",@"Functional Prototype",@"Final Product"];
    
    self.pickerReason.delegate = self;
    self.pickerReason.dataSource = self;
    
    //create shared instance of the tab data class
    self.data = [TabDataClass sharedInstance];
    
}


- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
   
}



#pragma mark Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    //return string according to the array element in the row
    return choices[row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    //set the selection property of the data to the selected row of the picker
    [self.data setSelection:[self.pickerReason selectedRowInComponent:0]];
}

#pragma mark DataSource Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    //only one column is needed
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    // Number of rows is determined by the array size
    return choices.count;
   
}

@end
