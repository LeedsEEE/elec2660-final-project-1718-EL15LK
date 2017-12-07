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
    NSArray *choices;       //'choices' from tab 2
    NSString *typeInput;    //input type
    bool emptyInput;
    bool smallPrint;
    int reasoningCode;
    float calculatedVolume;
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
    self.data = [TabDataClass sharedInstance];                      // create shared instance of tab data class
    
    [self userInputParameters];
    [self inputItemsManipulation];
    [self labelManipulation];
    [self setReasoningText];
    [self costManipulation];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) labelManipulation{
    
    if (emptyInput == false) {
        
        self.processLabel.hidden = false;
        self.elaboratedReasoning.hidden = false;
        self.costLabel.hidden = false;
        self.suggestLabel.hidden = false;
        self.costviewLabel.hidden = false;
        self.warnLabel.hidden = true;
        
        if (smallPrint == true) {
            switch (self.data.selection) {
                case 0:
                    reasoningCode = 1;
                    break;
                case 1:
                    reasoningCode = 2;
                    break;
                case 2:
                    reasoningCode = 3;
                    break;
                case 3:
                    reasoningCode = 4;
                    break;
                case 4:
                    reasoningCode = 5;
                    break;
            }
        } else {
            switch (self.data.selection) {
                case 0:
                    reasoningCode = 6;
                    break;
                case 1:
                    reasoningCode = 7;
                    break;
                case 2:
                    reasoningCode = 8;
                    break;
                case 3:
                    reasoningCode = 9;
                    break;
                case 4:
                    reasoningCode = 10;
                    break;
            }
        }
    
    }   else    {
        
        self.processLabel.hidden = true;
        self.elaboratedReasoning.hidden = true;
        self.costLabel.hidden = true;
        self.suggestLabel.hidden = true;
        self.costviewLabel.hidden = true;
        self.warnLabel.hidden = false;
        
    }
    
}

- (void) inputItemsManipulation{
    
    
    if ([typeInput isEqualToString:@"Dimensions"]) {  // if dimensions is selected
        
        // Manipulate the view for displaying the values that the user put into the length, width and height text field.
        self.typeinputLabel.text = @"Dimensions";
        self.actualinputLabel.text = [NSString stringWithFormat:@"L:%.2f  W:%.2f  H:%.2f (in mm)",self.data.lengthValue,self.data.widthValue,self.data.heightValue];
        
        if (emptyInput == true) {
            
            self.calcVolumeTag.hidden = true;
            self.calcVolumeLabel.hidden = true;
            
        } else {
            
            self.calcVolumeTag.hidden = false;                      // show calculated volume elements
            self.calcVolumeLabel.hidden = false;
            
            calculatedVolume = (self.data.lengthValue * self.data.widthValue * self.data.heightValue)/1000.0;
            self.calcVolumeLabel.text = [NSString stringWithFormat:@"%.4f (in cm3)",calculatedVolume];
            
        }
        
    } else if ([typeInput isEqualToString:@"Volume"]){ // if volume is selected
        
        // Manipulate the view for displaying the values that the user put into the volume text field.
        self.typeinputLabel.text = @"Volume";
        self.actualinputLabel.text = [NSString stringWithFormat:@"%.2f (in cm3)",self.data.volumeValue];
        
        self.calcVolumeTag.hidden = true;                       // hide calculated volume elements
        self.calcVolumeLabel.hidden = true;

    }
    
    self.reasonLabel.text = choices [self.data.selection];
    
}

- (void) userInputParameters{                                                               //Method to understand user inputs
    
    if ([self.data.inputType isEqualToString:@"Dimensions"]) {
        
        typeInput = @"Dimensions";
        
        if (self.data.lengthValue == 0 || self.data.widthValue == 0 || self.data.heightValue == 0) {
            
            emptyInput = true;
            
        } else{
            
            emptyInput = false;
            
            if (self.data.lengthValue <= 150 || self.data.widthValue <= 150 || self.data.heightValue == 0){
                
                smallPrint = true;
                
            } else {
                
                smallPrint = false;
                
            }
            
        }
        
    } else if ([self.data.inputType isEqualToString:@"Volume"]){
        
        typeInput = @"Volume";
        
        if (self.data.volumeValue == 0) {
            
            emptyInput = true;
            
        } else{
        
            emptyInput = false;
            
            if (self.data.volumeValue <= 3375){
                
                smallPrint = true;
                
            } else {
                
                smallPrint = false;
                
            }
        }
    }
}

- (void) setReasoningText {
    
    switch (reasoningCode) {
            
        case 1:
            
            self.processLabel.text = @"FDM";
            self.elaboratedReasoning.text = @"For a fun print, it is not required to have a very detailed print or the need for exotic materials. FDM is also the cheapest printing technique out of the available ones. Select PLA as the material.";
            
            break;
            
        case 2:
            
            self.processLabel.text = @"SLA";
            self.elaboratedReasoning.text = @"For a small print, SLA will be able to capture the different details of the model accurately. FDM can also be used if cost is an issue.";
            
            break;
            
        case 3:
            
            self.processLabel.text = @"SLA";
            self.elaboratedReasoning.text = @"SLA would be able to bring out the little details out in a model this size. FDM can also be used if there are no intricate details.";
            
            break;
            
        case 4:
            
            self.processLabel.text = @"SLS";
            self.elaboratedReasoning.text = @"For a functional prototype this small, SLS is recommended. SLS is deemed as the manufacturing technique that is meant for final products. SLA could also be used.";
            
            break;
            
        case 5:
            
            self.processLabel.text = @"SLS";
            self.elaboratedReasoning.text = @"SLS is deemed as the manufacturing technique that is meant for producing final products. Although it is the most expensive technique, it ensures that the final product is of high quality.";
            
            break;
            
        case 6:
            
            self.processLabel.text = @"FDM";
            self.elaboratedReasoning.text = @"For a fun print, it is not required to have a very detailed print or the need for exotic materials. FDM is also the cheapest printing technique out of the available ones. ";
            
            break;
            
        case 7:
            
            self.processLabel.text = @"FDM";
            self.elaboratedReasoning.text = @"FDM has the advantage of having multiple colors and composite polymer materials such as wood and metal to elevate  the aesthetics of the print. In addition, SLA would not be capable of such sizes.";
            
            break;
            
        case 8:
            
            self.processLabel.text = @"FDM";
            self.elaboratedReasoning.text = @"For a visual prototype this big, FDM is the best technique as there are not many services that provide SLA printing that is capable of such sizes.";
            
            break;
            
        case 9:
            
            self.processLabel.text = @"FDM";
            self.elaboratedReasoning.text = @"Using FDM with materials such as carbon fibre or polycarbonate for a print this big in size would be the most appropriate. However, if cost is not an issue, SLS could be used.";
            
            break;
            
        case 10:
            
            self.processLabel.text = @"SLS";
            self.elaboratedReasoning.text = @"SLS is deemed as the manufacturing technique that is meant for producing final products. Although it is the most expensive technique, it ensures that the final product is of high quality.";
            
            break;
            
    }

}

- (void) costManipulation {
    
    float costprice;
    
    if ([self.processLabel.text isEqualToString:@"FDM"]){
        
        if ([typeInput isEqualToString:@"Dimensions"]) {
            
            costprice = calculatedVolume * fdmcost;
            
        } else {
            
            costprice = self.data.volumeValue * fdmcost;
            
        }
    } else if ([self.processLabel.text isEqualToString:@"SLA"]){
        
        if ([typeInput isEqualToString:@"Dimensions"]) {
            
            costprice = calculatedVolume * slacost;
            
        } else {
            
            costprice = self.data.volumeValue * slacost;
            
        }
    } else {
        
        if ([typeInput isEqualToString:@"Dimensions"]) {
            
            costprice = calculatedVolume * slscost;
            
        } else {
            
            costprice = self.data.volumeValue * slscost;
            
        }
    }
    
    self.costLabel.text = [NSString stringWithFormat:@"Approximately £%.2f",costprice];
}

@end
