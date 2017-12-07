//
//  examplesTableViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "examplesTableViewController.h"

@interface examplesTableViewController ()

@end

@implementation examplesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[DataModel alloc] init];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    self.tableView.backgroundColor = baseColor;
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger numberOfRows = 0;
    
    if (section == 0) {
        numberOfRows = self.data.examples.count;                                                                   // setup number of rows according to number of elements in processes array.
    }
    
    return numberOfRows;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"Example Models";
}

#pragma mark - Data Supply

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExampleCell" forIndexPath:indexPath];
    
    ExampleModel *tempExample = [self.data.examples objectAtIndex:indexPath.row];
    
    cell.textLabel.text = tempExample.name;
    
    return cell;
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
    if ([[segue identifier] isEqualToString:@"ShowExampleDetails"]) {
        
        modelViewer *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0){
            
            ExampleModel *tempExample = [self.data.examples objectAtIndex: indexPath.row];
            destinationViewController.example = tempExample;
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
