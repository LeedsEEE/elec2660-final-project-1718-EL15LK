//
//  modelViewer.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SceneKit/SceneKit.h>
#import "AppConstants.h"
#import "ExampleModel.h"

@interface modelViewer : UIViewController

@property (weak, nonatomic) IBOutlet SCNView *actualScene;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dimensionsLabel;
@property (weak, nonatomic) IBOutlet UILabel *volumeLabel;


@property (strong,nonatomic) ExampleModel *example;

@end
