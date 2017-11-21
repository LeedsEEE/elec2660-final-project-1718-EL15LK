//
//  DataModel.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.processes = [NSMutableArray array];
        
        process *FDM = [[process alloc] init];
        FDM.name = @"Fused Deposition Modelling";
        FDM.cost = 13.44;
        FDM.resolution = 20;
        FDM.speed = @"Medium";
        FDM.quickinfo = @"FDM stands for Fused Deposition Modelling. It is a popular form of 3D printing that is very commonly used.";
        FDM.materialusage = @"PLA, ABS, PETg, Composite Polymers";
        
        process *SLA = [[process alloc] init];
        SLA.name = @"Stereolithography";
        SLA.cost = 50.23;
        SLA.resolution = 5;
        SLA.speed = @"Slow";
        SLA.quickinfo = @"SLA stands for Stereolithography. It is a much more accurate form of 3D printing that is used for finer details.";
        SLA.materialusage = @"Resins";
        
        process *SLS = [[process alloc] init];
        SLS.name = @"Selective Laser Sintering";
        SLS.cost = 90.23;
        SLS.resolution = 2;
        SLS.speed = @"Medium";
        SLS.quickinfo = @"SLS stands for Selective Laser Sintering. It is an extremely accurate form of 3D printing that is also expensive.";
        SLS.materialusage = @"Powdered Metal";
        
        [self.processes addObject:FDM]; //index 0
        [self.processes addObject:SLA]; //index 1
        [self.processes addObject:SLS]; //index 2
        
        
    }
    return self;
}
@end
