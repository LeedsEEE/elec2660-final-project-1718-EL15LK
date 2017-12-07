//
//  modelViewer.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SceneKit/SceneKit.h>


@interface modelViewer : UIViewController

@property (weak, nonatomic) IBOutlet SCNView *actualScene;                  //Set SCNview as a property

@end
