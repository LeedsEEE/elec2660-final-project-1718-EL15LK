//
//  DetailViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
// FDM and SLA image from website: http://apm-designs.com/fdm-vs-sla-3d-printer-tech-comparison
// original SLS image By Materialgeeza - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4032088 . Modified for consistency.
// Adding borders / curved edges from: https://stackoverflow.com/questions/34984966

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self showdata];
    
    [self aesthetics];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}

//method for manipulating dynamic labels / imageview
- (void)showdata{
    
    //dynamic label manipulation
    self.quickInfo.text = self.process.quickinfo;
    self.priceLabel.text = [NSString stringWithFormat:@"Around £%.2f per mm3",self.process.cost];
    self.resolutionLabel.text = [NSString stringWithFormat:@"%.3f",self.process.resolution];
    self.qualityLabel.text = self.process.quality;
    self.materialsLabel.text = self.process.materialusage;
    
    //dynamic image manipulation
    self.processImage.image = [UIImage imageNamed: self.process.imagelink];
    
}

//method for making the app more presentable
- (void)aesthetics{
    //border setup for imageview
    self.processImage.layer.masksToBounds = true;
    self.processImage.layer.borderColor = [navbarColor CGColor];
    self.processImage.layer.borderWidth = 2.0;
    self.processImage.layer.cornerRadius = 5.0;
    
    //set header title
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    
}

@end
