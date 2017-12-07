//
//  modelViewer.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "modelViewer.h"
#import "HxSTLParser.h"
#import <SceneKit/SceneKit.h>
#import "AppConstants.h"

@interface modelViewer ()

@end

@implementation modelViewer

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadStl:(self.example.stllink)];
    
    self.actualScene.layer.masksToBounds = true;
    self.actualScene.layer.borderColor = [navbarColor CGColor];
    self.actualScene.layer.borderWidth = 2.0;
    self.actualScene.layer.cornerRadius = 5.0;
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    
    self.nameLabel.text = self.example.name;
    self.dimensionsLabel.text = [NSString stringWithFormat:@"Length: %.2f, Width: %.2f, Height: %.2f", self.example.length, self.example.width, self.example.height];
    self.volumeLabel.text = [NSString stringWithFormat:@"Volume: %.2f", self.example.volume];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadStl: (NSString *)modelpath {
    
    
    STLParser *parser = [[STLParser alloc] init];
    NSError *error = nil;
    NSString *fileContents = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:modelpath ofType:@"stl"] encoding:NSASCIIStringEncoding error:nil];
    SCNNode *node = [parser loadFromString:fileContents error:&error];
    if(error != nil) {
        NSLog(@"Something went wrong: %@", error);
        return;
    }
    SCNScene *scene = [[SCNScene alloc] init];
    self.actualScene.autoenablesDefaultLighting = true;
    self.actualScene.backgroundColor = baseColor;
    [scene.rootNode addChildNode:node];
    
    self.actualScene.scene = scene;
}

@end