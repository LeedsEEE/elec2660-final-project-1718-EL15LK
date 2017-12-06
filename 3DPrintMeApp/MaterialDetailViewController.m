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
    
    self.infoLabel.text = self.material.quickinfo;
    self.processLabel.text = self.material.process;
    self.imageView.image = [UIImage imageNamed: self.material.imagelink];
    
    self.priceLabel.text = self.material.cost;
    if ([self.priceLabel.text  isEqual: @"$"]) {
        self.priceLabel.textColor = appGreenColor;
    } else if ([self.priceLabel.text isEqual: @"$$$"]) {
        self.priceLabel.textColor = appRedColor;
    } else
    
    self.strengthLabel.text = self.material.strength;
    if ([self.strengthLabel.text  isEqual: @"High"]) {
        self.strengthLabel.textColor = appGreenColor;
    } else if ([self.strengthLabel.text isEqual: @"Very High"]) {
        self.strengthLabel.textColor = appGreenColor;
    } else if ([self.strengthLabel.text isEqual: @"Low"]){
        self.strengthLabel.textColor = appRedColor;
    }
    
    self.flexibilityLabel.text = self.material.flexibility;
    if ([self.flexibilityLabel.text  isEqual: @"High"]) {
        self.flexibilityLabel.textColor = appGreenColor;
    } else if ([self.flexibilityLabel.text isEqual: @"Very High"]) {
        self.flexibilityLabel.textColor = appGreenColor;
    } else if ([self.flexibilityLabel.text isEqual: @"Low"]){
        self.flexibilityLabel.textColor = appRedColor;
    }
    
    self.durabilityLabel.text = self.material.durability;
    if ([self.durabilityLabel.text  isEqual: @"High"]) {
        self.durabilityLabel.textColor = appGreenColor;
    } else if ([self.durabilityLabel.text isEqual: @"Very High"]) {
        self.durabilityLabel.textColor = appGreenColor;
    } else if ([self.durabilityLabel.text isEqual: @"Low"]){
        self.durabilityLabel.textColor = appRedColor;
    }
    
    self.imageView.layer.masksToBounds = true;
    self.imageView.layer.borderColor = [navbarColor CGColor];
    self.imageView.layer.borderWidth = 2.0;
    self.imageView.layer.cornerRadius = 5.0;
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    
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
