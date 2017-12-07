//
//  TabController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TabController.h"
#import "AppConstants.h"

@interface TabController ()

@end

@implementation TabController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //set header title
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
 
}

@end
