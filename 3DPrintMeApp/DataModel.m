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
        
        self.processes = [NSMutableArray array];                    //Specific information for each of the processes are from www.sculpteo.com
        
        process *FDM = [[process alloc] init];
        FDM.name = @"Fused Deposition Modelling";
        FDM.cost = 13.44;
        FDM.resolution = 0.127;
        FDM.quality = @"Low to Medium";
        FDM.quickinfo = @"FDM stands for Fused Deposition Modelling. It is a popular form of 3D printing that is very commonly used.";
        FDM.materialusage = @"PLA, ABS, Nylon, Composite Polymers";
        
        process *SLA = [[process alloc] init];
        SLA.name = @"Stereolithography";
        SLA.cost = 50.23;
        SLA.resolution = 0.015;
        SLA.quality = @"High";
        SLA.quickinfo = @"SLA stands for Stereolithography. It is a much more accurate form of 3D printing that is used for finer details.";
        SLA.materialusage = @"Photosensitive Resins";
        
        process *SLS = [[process alloc] init];
        SLS.name = @"Selective Laser Sintering";
        SLS.cost = 90.23;
        SLS.resolution = 0.01;
        SLS.quality = @"High";
        SLS.quickinfo = @"SLS stands for Selective Laser Sintering. It is an extremely accurate form of 3D printing that is also expensive.";
        SLS.materialusage = @"Polyamide (Nylon), Polystyrenes, Thermoplastic Polyurethane (TPU), Metal";
        
        [self.processes addObject:FDM]; //index 0
        [self.processes addObject:SLA]; //index 1
        [self.processes addObject:SLS]; //index 2
        
        self.materials = [NSMutableArray array];                    //Specific information for each of the materials are from www.3dhubs.com & all3dp.com
    }
    return self;
}
@end
