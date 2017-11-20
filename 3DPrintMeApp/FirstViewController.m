//
//  FirstViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.volumeLabel.hidden = true;                                //Switch is turned off by default (dimensions input)
    self.volumeTextField.hidden = true;                            //So hide all elements that belong to volume input
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)switchPressed:(UISwitch *)sender {
    
    if (sender.on)  {                                              // IF switch is turned on (volume is selected)
        
        self.lengthLabel.hidden = true;                            // Hide all elements that belong to dimensions input
        self.widthLabel.hidden = true;
        self.heightLabel.hidden = true;
        self.lengthTextField.hidden = true;
        self.widthTextField.hidden = true;
        self.heightTextField.hidden = true;
        
        self.volumeLabel.hidden = false;                           // Show all elements that belong to volume input
        self.volumeTextField.hidden = false;
        
    }   else {                                                     // Else switch is turned off (dimensions is selected)
        
        self.volumeLabel.hidden = true;                            // Hide all elements that belong to volume input
        self.volumeTextField.hidden = true;
        
        self.lengthLabel.hidden = false;                           // Show all elements that belong to dimensions input
        self.widthLabel.hidden = false;
        self.heightLabel.hidden = false;
        self.lengthTextField.hidden = false;
        self.widthTextField.hidden = false;
        self.heightTextField.hidden = false;
    }
}
@end
