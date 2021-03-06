//
//  LearningCentreTableViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "LearningCentreTableViewController.h"

@interface LearningCentreTableViewController ()

@end

@implementation LearningCentreTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //
    self.data = [[DataModel alloc] init];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    self.tableView.backgroundColor = baseColor;
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    //return 2 sections - process and materials
    return 2;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    //return the number of rows according to the number of elements in the respective array
    NSInteger numberOfRows = 0;
    
    if (section == 0) {
        
        numberOfRows = self.data.processes.count;
        
    }
    
    if (section == 1) {
        
        numberOfRows = self.data.materials.count;
        
    }
    
    return numberOfRows;
}

// Setting up section headers
// Code is from https://stackoverflow.com/questions/10505708/how-to-set-the-uitableview-section-title-programmatically-iphone-ipad
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSString *sectionName;
    switch (section) {
        
        //section 0 is processes
        case 0:
            
            sectionName = NSLocalizedString(@"Processes", @"Processes");
            
            break;
       
        //section 1 is materials
        case 1:
            
            sectionName = NSLocalizedString(@"Materials", @"Materials");
            
            break;
    }
    
    return sectionName;
    
}

#pragma mark - Data Supply

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell;
    
    if (indexPath.section == 0) {
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"ProcessCell" forIndexPath:indexPath];
        process *tempProcess = [self.data.processes objectAtIndex:indexPath.row];
        
        //take name from temporary data
        cell.textLabel.text = tempProcess.name;

    }
    
    if (indexPath.section == 1){
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"MaterialCell" forIndexPath:indexPath];
        material *tempMaterial = [self.data.materials objectAtIndex:indexPath.row];
        
        //take name from temporary data
        cell.textLabel.text = tempMaterial.name;
        
    }
    
    return cell;
}




#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([[segue identifier] isEqualToString:@"ShowProcessDetails"]) {
        
        //set appropriate view controller as destination view controller if string is equal
        DetailViewController *destinationViewController = [segue destinationViewController];                    //if it is the ShowProcessDetails segue, go to DetailViewController
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0) {
            
            process *tempprocess = [self.data.processes objectAtIndex: indexPath.row];
            destinationViewController.process = tempprocess;
            
        }
        
    }

    if ([[segue identifier] isEqualToString:@"ShowMaterialDetails"]) {
        
        //set appropriate view controller as destination view controller if string is equal
        MaterialDetailViewController *destinationViewController = [segue destinationViewController];           //if it is the ShowMaterialDetails segue, go to MaterialDetailViewController
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 1) {
            
            material *tempmaterial = [self.data.materials objectAtIndex: indexPath.row];
            destinationViewController.material = tempmaterial;
        }
    }
    
}

-(void)tableView:(UITableView*)tableView willDisplayHeaderView:(nonnull UIView *)view forSection:(NSInteger)section {
    
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    
    header.contentView.backgroundColor = baseColor;                                                             // set the background color to be basecolor (for consistency)
    header.textLabel.textColor = [UIColor whiteColor];                                                          // set header text to be white color
    header.textLabel.font = [UIFont systemFontOfSize:18];                                                   // set header text to be 18 size bold type

}

@end
