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
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];             //set title logo at the top navigation bar
    
    self.tableView.backgroundColor = baseColor;                                                                     //set background colour of the table. This will ensure consistency of the screen colors.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;                                                                                                       // 2 sections are present - materials and processes
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSInteger numberOfRows = 0;
    
    if (section == 0) {
        numberOfRows = self.data.processes.count;                                                                   // setup number of rows according to number of elements in processes array.
    }
    
    if (section == 1) {
        numberOfRows = self.data.materials.count;                                                                   // setup number of rows according to number of elements in materials array.
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
    
    if (indexPath.section == 0){                                                                        //processes section
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"ProcessCell" forIndexPath:indexPath];
        process *tempProcess = [self.data.processes objectAtIndex:indexPath.row];
        
        cell.textLabel.text = tempProcess.name;
    }
    
    if (indexPath.section == 1){                                                                        //materials section
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"MaterialCell" forIndexPath:indexPath];
        material *tempMaterial = [self.data.materials objectAtIndex:indexPath.row];
        
        cell.textLabel.text = tempMaterial.name;
    }
    
    return cell;
}




#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([[segue identifier] isEqualToString:@"ShowProcessDetails"]) {
        
        DetailViewController *destinationViewController = [segue destinationViewController];                    //if it is the ShowProcessDetails segue, go to DetailViewController
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0) {
            
            process *tempprocess = [self.data.processes objectAtIndex: indexPath.row];
            destinationViewController.process = tempprocess;
        }
    }

    if ([[segue identifier] isEqualToString:@"ShowMaterialDetails"]) {
            
        MaterialDetailViewController *destinationViewController = [segue destinationViewController];           //if it is the ShowMaterialDetails segue, go to MaterialDetailViewController
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 1) {
            
            material *tempmaterial = [self.data.materials objectAtIndex: indexPath.row];
            destinationViewController.material = tempmaterial;
        }
    }
    
}

-(void)tableView:(UITableView*)tableView willDisplayHeaderView:(nonnull UIView *)view forSection:(NSInteger)section
{
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    
    header.contentView.backgroundColor = baseColor;                                                             // set the background color to be basecolor (for consistency)
    header.textLabel.textColor = [UIColor whiteColor];                                                          // set header text to be white color
    header.textLabel.font = [UIFont systemFontOfSize:18];                                                   // set header text to be 18 size bold type

}
@end
