//
//  ThirdTabControllerViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ThirdTabControllerViewController.h"
#import "AppConstants.h"

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
    
    [self manipulation];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) manipulation{
    
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
            self.processLabel.text = @"FDM";
            self.elaboratedReasoning.text = @"For a fun print, it is not required to have a very detailed print or the need for exotic materials. FDM is also the cheapest printing technique out of the available ones. Select PLA as the material.";
            break;
        case 1:
            self.processLabel.text = @"FDM or SLA";
            self.elaboratedReasoning.text = @"If details are required, SLA is best technique for this purpose. However, FDM has the advantage of having multiple colors and composite polymer materials such as wood and metal to elevate  the aesthetics of the print.";
            break;
        case 2:
            self.processLabel.text = @"FDM or SLA";
            self.elaboratedReasoning.text = @"For a prototype that is meant for just display, FDM and SLA process should suffice. If the model contains intricate amounts of detail, SLA is the superior process as it would be able to fully reflect the prototype.";
            break;
        case 3:
            self.processLabel.text = @"FDM or SLS";
            self.elaboratedReasoning.text = @"For a functional prototype, SLS or FDM is recommended. SLS is deemed as the manufacturing technique that is meant for final products. However, using exotic materials such as polycarbonate or carbon fibre could help achieve similar results.";
            break;
        case 4:
            self.processLabel.text = @"SLS";
            self.elaboratedReasoning.text = @"SLS is deemed as the manufacturing technique that is meant for producing final products. Although it is the most expensive technique, it ensures that the final product is of high quality.";
            break;
    }
    
}

@end
