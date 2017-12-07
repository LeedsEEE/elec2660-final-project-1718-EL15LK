//
//  DetailViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "process.h"
#import "AppConstants.h"

@interface DetailViewController : UIViewController

//Dynamic labels in view
@property (weak, nonatomic) IBOutlet UILabel *quickInfo;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *resolutionLabel;
@property (weak, nonatomic) IBOutlet UILabel *qualityLabel;
@property (weak, nonatomic) IBOutlet UILabel *materialsLabel;

//Dynamic imageview in view
@property (weak, nonatomic) IBOutlet UIImageView *processImage;

@property (strong,nonatomic) process *process;

@end
