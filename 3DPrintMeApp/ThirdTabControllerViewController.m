//
//  ThirdTabControllerViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ThirdTabControllerViewController.h"

@interface ThirdTabControllerViewController ()

@end

@implementation ThirdTabControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    self.data = [TabDataClass sharedInstance];                  // create shared instance of tab data class
    
    if ([self.data.inputType isEqualToString:@"Dimensions"]) {  // if dimensions is selected
        
        // Manipulate the view for displaying the values that the user put into the length, width and height text field.
        self.typeinputLabel.text = @"Dimensions";
        self.actualinputLabel.text = [NSString stringWithFormat:@"L:%.2f  W:%.2f  H:%.2f (in mm)",self.data.lengthValue,self.data.widthValue,self.data.heightValue];
        
        self.calcVolumeTag.hidden = false;                      // show calculated volume elements
        self.calcVolumeLabel.hidden = false;
        
        float calculatedVolume;
        calculatedVolume = self.data.lengthValue * self.data.widthValue * self.data.heightValue;
        self.calcVolumeLabel.text = [NSString stringWithFormat:@"%.2f (in mm3)",calculatedVolume];
        
    } else if ([self.data.inputType isEqualToString:@"Volume"]){ // if volume is selected
        
        // Manipulate the view for displaying the values that the user put into the volume text field.
        self.typeinputLabel.text = @"Volume";
        self.actualinputLabel.text = [NSString stringWithFormat:@"%.2f (in mm3)",self.data.volumeValue];
        
        self.calcVolumeTag.hidden = true;                       // hide calculated volume elements
        self.calcVolumeLabel.hidden = true;
    }
    
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

@end
