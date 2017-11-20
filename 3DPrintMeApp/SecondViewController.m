//
//  SecondViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    NSArray *choices;                                                              // define 'choices' as an array for storing options
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Choices are predetermined, hence they will be stored in an array as strings
    choices = @[@"fun",@"more fun",@"more more fun",@"fun fun fun fun",@"looking forward to the weekend"];
    
    self.pickerReason.delegate = self;
    self.pickerReason.dataSource = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return choices[row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
}



#pragma mark DataSource Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return choices.count;                                                        //  Number of Rows is determined by the array size
}
@end
