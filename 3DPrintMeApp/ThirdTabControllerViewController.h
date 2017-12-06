//
//  ThirdTabControllerViewController.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabDataClass.h"

@interface ThirdTabControllerViewController : UIViewController

@property (strong, nonatomic) TabDataClass *data;

@property (weak, nonatomic) IBOutlet UILabel *typeinputLabel;
@property (weak, nonatomic) IBOutlet UILabel *actualinputLabel;
@property (weak, nonatomic) IBOutlet UILabel *calcVolumeLabel;
@property (weak, nonatomic) IBOutlet UILabel *calcVolumeTag;
@property (weak, nonatomic) IBOutlet UILabel *reasonLabel;
@property (weak, nonatomic) IBOutlet UILabel *processLabel;
@property (weak, nonatomic) IBOutlet UILabel *elaboratedReasoning;
@property (weak, nonatomic) IBOutlet UILabel *costLabel;
@property (weak, nonatomic) IBOutlet UILabel *suggestLabel;
@property (weak, nonatomic) IBOutlet UILabel *costviewLabel;
@property (weak, nonatomic) IBOutlet UILabel *warnLabel;

@end
