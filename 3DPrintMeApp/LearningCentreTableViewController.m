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
    
    self.data = [[DataModel alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

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
        
        case 0:                                                                         //Section 0 is processes
            sectionName = NSLocalizedString(@"Processes", @"Processes");
            break;
       
        case 1:                                                                         //Section 1 is materials
            sectionName = NSLocalizedString(@"Materials", @"Materials");
            
    }
    return sectionName;
}

#pragma mark - Data Supply

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell;
    // Configure the cell...
    
    if (indexPath.section == 0){                                                                        //processes
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"ProcessCell" forIndexPath:indexPath];
        process *tempProcess = [self.data.processes objectAtIndex:indexPath.row];
        
        cell.textLabel.text = tempProcess.name;
    }
    
    if (indexPath.section == 1){                                                                        //materials
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"MaterialCell" forIndexPath:indexPath];
        material *tempMaterial = [self.data.materials objectAtIndex:indexPath.row];
        
        cell.textLabel.text = tempMaterial.name;
    }
    
    return cell;
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

    if ([[segue identifier] isEqualToString:@"ShowProcessDetails"]) {
        
        DetailViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0) {
            
            process *tempprocess = [self.data.processes objectAtIndex: indexPath.row];
            destinationViewController.process = tempprocess;
        }
    }

    if ([[segue identifier] isEqualToString:@"ShowMaterialDetails"]) {
            
        MaterialDetailViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 1) {
            
            material *tempmaterial = [self.data.materials objectAtIndex: indexPath.row];
            destinationViewController.material = tempmaterial;
        }
    }
    
}
@end
