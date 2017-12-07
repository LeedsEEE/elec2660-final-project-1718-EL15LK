//
//  modelViewer.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "modelViewer.h"
#import "HxSTLParser.h"                             //import parser header to allow parsing of stl to scn Reference: https://github.com/victorgama/HxSTLParser
#import <SceneKit/SceneKit.h>                       //import scenekit framework to allow scnview
#import "AppConstants.h"                            //import app constants header

@interface modelViewer ()

@end

@implementation modelViewer

- (void)viewDidLoad {
    [super viewDidLoad];

    //set border around the SCNView
    self.actualScene.layer.masksToBounds = true;
    self.actualScene.layer.borderColor = [navbarColor CGColor];
    self.actualScene.layer.borderWidth = 2.0;
    self.actualScene.layer.cornerRadius = 5.0;
    
    //set header logo
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    
    //call stl method
    [self loadStl];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)loadStl{
    
    //method to use the feature from github
    STLParser *parser = [[STLParser alloc] init];
    NSError *error = nil;
    NSString *fileContents = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"iPhoneMoney" ofType:@"stl"] encoding:NSASCIIStringEncoding error:nil];
    SCNNode *node = [parser loadFromString:fileContents error:&error];
    if(error != nil) {
        NSLog(@"Something went wrong: %@", error);
        return;
    }
    SCNScene *scene = [[SCNScene alloc] init];

    //scene setup
    self.actualScene.autoenablesDefaultLighting = true;
    self.actualScene.backgroundColor = baseColor;
    
    
    [scene.rootNode addChildNode:node];
    
    //assign scene to output the nodes
    self.actualScene.scene = scene;
}

@end
