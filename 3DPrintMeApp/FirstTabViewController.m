//
//  FirstTabViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FirstTabViewController.h"

@interface FirstTabViewController ()

@end

@implementation FirstTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)selectControl:(id)sender {
    
    if (self.selectionController.selectedSegmentIndex == 0) {
        self.selectionLabel.text = @"First";
    }
    
    if (self.selectionController.selectedSegmentIndex == 1) {
        self.selectionLabel.text = @"Second";
    }
}
@end
