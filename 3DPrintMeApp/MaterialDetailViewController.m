//
//  MaterialDetailViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MaterialDetailViewController.h"

@interface MaterialDetailViewController ()

@end

@implementation MaterialDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self showdata];
    
    [self showcolor];
    
    [self aesthetics];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];

}

//method for manipulating dynamic labels / imageview
- (void)showdata{
    
    self.infoLabel.text = self.material.quickinfo;
    self.processLabel.text = self.material.process;
    self.imageView.image = [UIImage imageNamed: self.material.imagelink];
    self.priceLabel.text = self.material.cost;
    self.strengthLabel.text = self.material.strength;
    self.flexibilityLabel.text = self.material.flexibility;
    self.durabilityLabel.text = self.material.durability;
    
}


//method to set colors for selected data
- (void)showcolor{
    
    //setup colors for price
    if ([self.priceLabel.text  isEqual: @"$"]) {
        
        self.priceLabel.textColor = appGreenColor;
        
    } else if ([self.priceLabel.text isEqual: @"$$$"]) {
        
        self.priceLabel.textColor = appRedColor;
        
    }
        
    //setup colors for strength
    if ([self.strengthLabel.text  isEqual: @"High"]) {
        
            self.strengthLabel.textColor = appGreenColor;
        
    } else if ([self.strengthLabel.text isEqual: @"Very High"]) {
        
            self.strengthLabel.textColor = appGreenColor;
        
    } else if ([self.strengthLabel.text isEqual: @"Low"]){
        
            self.strengthLabel.textColor = appRedColor;
        
    }
    
    //setup colors for flexibility
    if ([self.flexibilityLabel.text  isEqual: @"High"]) {
        
        self.flexibilityLabel.textColor = appGreenColor;
        
    } else if ([self.flexibilityLabel.text isEqual: @"Very High"]) {
        
        self.flexibilityLabel.textColor = appGreenColor;
        
    } else if ([self.flexibilityLabel.text isEqual: @"Low"]){
        
        self.flexibilityLabel.textColor = appRedColor;
        
    }
    
    //setup colors for durability
    if ([self.durabilityLabel.text  isEqual: @"High"]) {
        
        self.durabilityLabel.textColor = appGreenColor;
        
    } else if ([self.durabilityLabel.text isEqual: @"Very High"]) {
        
        self.durabilityLabel.textColor = appGreenColor;
        
    } else if ([self.durabilityLabel.text isEqual: @"Low"]){
        
        self.durabilityLabel.textColor = appRedColor;
        
    }

    
}

//method for making the app more presentable
- (void)aesthetics{
    
    //border setup for imageview
    self.imageView.layer.masksToBounds = true;
    self.imageView.layer.borderColor = [navbarColor CGColor];
    self.imageView.layer.borderWidth = 2.0;
    self.imageView.layer.cornerRadius = 5.0;
    
    //set header title
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    
}

@end
