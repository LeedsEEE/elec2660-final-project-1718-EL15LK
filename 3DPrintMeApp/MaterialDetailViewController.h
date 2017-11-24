//
//  MaterialDetailViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "material.h"

@interface MaterialDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UILabel *processLabel;
@property (weak, nonatomic) IBOutlet UILabel *strengthLabel;
@property (weak, nonatomic) IBOutlet UILabel *flexibilityLabel;
@property (weak, nonatomic) IBOutlet UILabel *durabilityLabel;

@property (strong,nonatomic) material *material;


@end
