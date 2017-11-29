//
//  ThirdTabControllerViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ThirdTabControllerViewController.h"

@interface ThirdTabControllerViewController ()
{
    NSArray *choices; // 'choices' from tab 2
}

@end

@implementation ThirdTabControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Choices are predetermined, hence they will be stored in an array as strings
    choices = @[@"Fun Print",@"Aesthetics",@"Visual Prototype",@"Functional Prototype",@"Final Product"];
    
    
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
    
    self.reasonLabel.text = choices [self.data.selection];
    
    switch (self.data.selection) {
        case 0:
            self.processLabel.text = @"1process goes here";
            self.elaboratedReasoning.text = @"1reasoning goes here";
            break;
        case 1:
            self.processLabel.text = @"2process goes here";
            self.elaboratedReasoning.text = @"2reasoning goes here";
            break;
        case 2:
            self.processLabel.text = @"3process goes here";
            self.elaboratedReasoning.text = @"3reasoning goes here";
            break;
        case 3:
            self.processLabel.text = @"4process goes here";
            self.elaboratedReasoning.text = @"4reasoning goes here";
            break;
        case 4:
            self.processLabel.text = @"5process goes here";
            self.elaboratedReasoning.text = @"5reasoning goes here";
            break;
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
