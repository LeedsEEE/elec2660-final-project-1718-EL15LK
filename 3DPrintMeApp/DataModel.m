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
        
#pragma mark processes data model
//Specific information for each of the processes are from www.sculpteo.com
        
        self.processes = [NSMutableArray array];
        
        process *FDM = [[process alloc] init];
        FDM.name = @"Fused Deposition Modelling (FDM)";
        FDM.cost = 13.44;
        FDM.resolution = 0.127;
        FDM.quality = @"Low to Medium";
        FDM.quickinfo = @"FDM stands for Fused Deposition Modelling. It is a popular form of 3D printing that is very commonly used.";
        FDM.materialusage = @"PLA, ABS, Nylon, Composite Polymers";
        FDM.imagelink = @"FDM_printing.png";
        
        process *SLA = [[process alloc] init];
        SLA.name = @"Stereolithography (SLA)";
        SLA.cost = 50.23;
        SLA.resolution = 0.015;
        SLA.quality = @"High";
        SLA.quickinfo = @"SLA stands for Stereolithography. It is a much more accurate form of 3D printing that is used for finer details.";
        SLA.materialusage = @"Photosensitive Resins";
        SLA.imagelink = @"SLA_printing.png";
        
        process *SLS = [[process alloc] init];
        SLS.name = @"Selective Laser Sintering (SLS)";
        SLS.cost = 90.23;
        SLS.resolution = 0.01;
        SLS.quality = @"High";
        SLS.quickinfo = @"SLS stands for Selective Laser Sintering. It is an extremely accurate form of 3D printing that is also expensive.";
        SLS.materialusage = @"Polyamide (Nylon), Polystyrenes, Thermoplastic Polyurethane (TPU), Metal";
        SLS.imagelink = @"SLS_printing.jpg";
        
        [self.processes addObject:FDM]; //index 0
        [self.processes addObject:SLA]; //index 1
        [self.processes addObject:SLS]; //index 2
        
        
#pragma mark materials data model
//Specific information for each of the materials are from www.3dhubs.com & all3dp.com
//Photos from all3dp.com (https://all3dp.com/1/3d-printer-filament-types-3d-printing-3d-filament/)
        
        self.materials = [NSMutableArray array];
        
        material *PLA = [[material alloc] init];
        PLA.name = @"Polylactic Acid (PLA)";
        PLA.cost = @"$";
        PLA.process = @"FDM";
        PLA.quickinfo = @"PLA is the most popular 3D printer filament for FDM machines. It is a more environmentally friendly material than most 3D printer filaments.";
        PLA.strength = @"High";
        PLA.flexibility = @"Low";
        PLA.durability = @"Medium";
        PLA.imagelink = @"Material_PLA.jpg";
        
        material *ABS = [[material alloc]	init];
        ABS.name = @"Acrylonitrile Butadiene Styrene (ABS)";
        ABS.cost = @"$";
        ABS.process = @"FDM";
        ABS.quickinfo = @"ABS is a very durable and high temperature-tolerant material. It is commonly used in consumer products.";
        ABS.strength = @"High";
        ABS.flexibility = @"Medium";
        ABS.durability = @"High";
        ABS.imagelink = @"Material_ABS.jpg";

        material *PETg = [[material alloc]	init];
        PETg.name = @"Polyethylene Terephthalate (PET)";
        PETg.cost = @"$";
        PETg.process = @"FDM";
        PETg.quickinfo = @"PETg strikes the middle ground between PLA and ABS. It is an all-rounder material that has good impact resistance.";
        PETg.strength = @"High";
        PETg.flexibility = @"Medium";
        PETg.durability = @"High";
        PETg.imagelink = @"Material_PETG.jpg";
        
        material *Nylon = [[material alloc]	init];
        Nylon.name = @"Nylon";
        Nylon.cost = @"$$";
        Nylon.process = @"FDM, SLS";
        Nylon.quickinfo = @"Nylon is a synthetic polymer that has many industrial applications. As it has such good properties, it is usually used to make tools, functional prototypes and mechanical parts.";
        Nylon.strength = @"High";
        Nylon.flexibility = @"High";
        Nylon.durability = @"High";
        Nylon.imagelink = @"Material_Nylon.jpg";
        
        material *TPU = [[material alloc]	init];
        TPU.name = @"Thermoplastic Polyurethane (TPU)";
        TPU.cost = @"$";
        TPU.process = @"FDM";
        TPU.quickinfo = @"TPU is a plastic with rubber-like qualities, making it flexible and durable. It is commonly used for toys, phone cases and wearables.";
        TPU.strength = @"Medium";
        TPU.flexibility = @"Very High";
        TPU.durability = @"Very High";
        TPU.imagelink = @"Material_TPU.jpg";
        
        material *PC = [[material alloc]	init];
        PC.name = @"Polycarbonate (PC)";
        PC.cost = @"$$";
        PC.process = @"FDM";
        PC.quickinfo = @"PC is extremely durable while being impact and heat resistant. It sees use in bullet proof glass, scuba masks and electronic display screens.";
        PC.strength = @"Very High";
        PC.flexibility = @"Medium";
        PC.durability = @"Very High";
        PC.imagelink = @"Material_PC.jpg";
        
        material *ASA = [[material alloc]	init];
        ASA.name = @"Acrylonitrile Styrene Acrylate (ASA)";
        ASA.cost = @"$";
        ASA.process = @"FDM";
        ASA.quickinfo = @"ASA is a strong, rigid material that is extremely resistant to chemical exposure and heat. It is primarily used in the automotive industry.";
        ASA.strength = @"High";
        ASA.flexibility = @"Medium";
        ASA.durability = @"High";
        ASA.imagelink = @"Material_ASA.jpg";

        
        [self.materials addObject:PLA];     //index 0
        [self.materials addObject:ABS];     //index 1
        [self.materials addObject:PETg];    //index 2
        [self.materials addObject:Nylon];   //index 3
        [self.materials addObject:TPU];     //index 4
        [self.materials addObject:PC];      //index 5
        [self.materials addObject:ASA];     //index 6
        
    }
    return self;
}
@end
