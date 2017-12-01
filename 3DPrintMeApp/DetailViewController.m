//
//  DetailViewController.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
// FDM and SLA image from website: http://apm-designs.com/fdm-vs-sla-3d-printer-tech-comparison
// original SLS image By Materialgeeza - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4032088 . Modified for consistency.
{
    NSArray *images;
    
}
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    images = @[@"FDM_printing.png",@"SLA_printing.png",@"SLA_printing.png"];
    
    self.quickInfo.text = self.process.quickinfo;
    self.priceLabel.text = [NSString stringWithFormat:@"Around £%.2f per mm3",self.process.cost];
    self.resolutionLabel.text = [NSString stringWithFormat:@"%.3f",self.process.resolution];
    self.qualityLabel.text = self.process.quality;
    self.materialsLabel.text = self.process.materialusage;
    self.processImage.image = [UIImage imageNamed: self.process.imagelink];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:TitleLogo]];
    
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

@end
