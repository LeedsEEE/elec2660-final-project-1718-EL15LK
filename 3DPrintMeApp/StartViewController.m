//
//  StartViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "StartViewController.h"
#import "AppConstants.h"
#import "HxSTLParser.h"                 //https://github.com/victorgama/HxSTLParser

@interface StartViewController ()

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* - (void)loadStl {                                           //this is for using the parser
    STLParser *parser = [[STLParser alloc] init];
    NSError *error = nil;
    NSString *fileContents = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"3dObject" ofType:@"stl"] encoding:NSASCIIStringEncoding error:nil];
    SCNNode *node = [parser loadFromString:fileContents error:&error];
    if(error != nil) {
        NSLog(@"Something went wrong: %@", error);
        return;
    }
    SCNScene *scene = [[SCNScene alloc] init];
    // ...configure your scene
    [scene.rootNode addChildNode:node];
} */

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];

    
}
@end
