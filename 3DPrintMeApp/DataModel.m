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

#pragma mark hubs data model
        
        self.hubs = [NSMutableArray array];
       
        Hub *Printhublondon = [[Hub alloc] init];
        Printhublondon.name = @"Printhub London";
        Printhublondon.city = @"London";
        Printhublondon.county = @"London";
        Printhublondon.country = @"United Kingdom";
        Printhublondon.longitude = 51.5074;
        Printhublondon.latitude = 0.1278;
        
        Hub *LaMa1 = [[Hub alloc] init];
        LaMa1.name = @"LaMa 3D";
        LaMa1.city = @"Leeds";
        LaMa1.county = @"West Yorkshire";
        LaMa1.country = @"United Kingdom";
        LaMa1.longitude = 53.815596;
        LaMa1.latitude = -1.556771;
        
        Hub *LaMa2 = [[Hub alloc] init];
        LaMa2.name = @"LaMa 3D";
        LaMa2.city = @"Wakefield";
        LaMa2.county = @"West Yorkshire";
        LaMa2.country = @"United Kingdom";
        LaMa2.longitude = 53.691059;
        LaMa2.latitude = -1.503924;
        
        Hub *threeDPworld = [[Hub alloc] init];
        threeDPworld.name = @"3D Print World";
        threeDPworld.city = @"Aylesbury";
        threeDPworld.county = @"Buckinghamshire";
        threeDPworld.country = @"United Kingdom";
        threeDPworld.longitude = 51.8156;
        threeDPworld.latitude = -0.8084;
        
        Hub *cncvac= [[Hub alloc] init];
        cncvac.name = @"CNCvac";
        cncvac.city = @"Borehamwood";
        cncvac.county = @"Hertfordshire";
        cncvac.country = @"United Kingdom";
        cncvac.longitude = 51.6577;
        cncvac.latitude = 0.2723;
        
        Hub *technoid= [[Hub alloc] init];
        technoid.name = @"Technoid";
        technoid.city = @"Harrow";
        technoid.county = @"Greater London";
        technoid.country = @"United Kingdom";
        technoid.longitude = 51.5806;
        technoid.latitude = -0.342;
        
        Hub *roger= [[Hub alloc] init];
        roger.name = @"Roger";
        roger.city = @"High Wycombe";
        roger.county = @"Buckinghamshire";
        roger.country = @"United Kingdom";
        roger.longitude = 51.6286;
        roger.latitude = -0.7482;
        
        Hub *admg= [[Hub alloc] init];
        admg.name = @"admg Consulting";
        admg.city = @"Reading";
        admg.county = @"Berkshire";
        admg.country = @"United Kingdom";
        admg.longitude = 51.4543;
        admg.latitude = -0.9781;
        
        Hub *hubcrash= [[Hub alloc] init];
        hubcrash.name = @"Crash 3D";
        hubcrash.city = @"Surbiton";
        hubcrash.county = @"Greater London";
        hubcrash.country = @"United Kingdom";
        hubcrash.longitude = 51.394;
        hubcrash.latitude = 0.3027;
        
        Hub *zaxis= [[Hub alloc] init];
        zaxis.name = @"Z-Axis";
        zaxis.city = @"Walton-on-Thames";
        zaxis.county = @"Surrey";
        zaxis.country = @"United Kingdom";
        zaxis.longitude = 51.3885;
        zaxis.latitude = -0.417;
        
        Hub *herts= [[Hub alloc] init];
        herts.name = @"Herts 3D";
        herts.city = @"Watford";
        herts.county = @"Hertfordshire";
        herts.country = @"United Kingdom";
        herts.longitude = 51.6565;
        herts.latitude = -0.3903;
        
        Hub *ozoid= [[Hub alloc] init];
        ozoid.name = @"Ozoid";
        ozoid.city = @"Weybridge";
        ozoid.county = @"Surrey";
        ozoid.country = @"United Kingdom";
        ozoid.longitude = 51.3716;
        ozoid.latitude = -0.4579;
        
        Hub *ptp= [[Hub alloc] init];
        ptp.name = @"PTP Prototyping";
        ptp.city = @"Woking";
        ptp.county = @"Surrey";
        ptp.country = @"United Kingdom";
        ptp.longitude = 51.3168;
        ptp.latitude = -0.56;
        
        Hub *sean= [[Hub alloc] init];
        sean.name = @"Sean";
        sean.city = @"Bassingbourn";
        sean.county = @"Cambridgeshire";
        sean.country = @"United Kingdom";
        sean.longitude = 52.0798;
        sean.latitude = 0.0539;
        
        Hub *bath= [[Hub alloc] init];
        bath.name = @"Bath 3D";
        bath.city = @"Bassingbourn";
        bath.county = @"Somerset";
        bath.country = @"United Kingdom";
        bath.longitude = 51.3758;
        bath.latitude = -2.3599;
        
        Hub *keymedia= [[Hub alloc] init];
        keymedia.name = @"Keymedia";
        keymedia.city = @"Brighton";
        keymedia.county = @"East Sussex";
        keymedia.country = @"United Kingdom";
        keymedia.longitude = 50.8225;
        keymedia.latitude = -0.1372;
        
        Hub *b3dp= [[Hub alloc] init];
        b3dp.name = @"Bristol 3D Print";
        b3dp.city = @"Bristol";
        b3dp.county = @"Bristol";
        b3dp.country = @"United Kingdom";
        b3dp.longitude = 51.4545;
        b3dp.latitude = -2.5879;
        
        Hub *aidan= [[Hub alloc] init];
        aidan.name = @"Aidan";
        aidan.city = @"Cambridge";
        aidan.county = @"Cambridgeshire";
        aidan.country = @"United Kingdom";
        aidan.longitude = 52.2053;
        aidan.latitude = 0.1218;
        
        Hub *migprops= [[Hub alloc] init];
        migprops.name = @"Miguelprops";
        migprops.city = @"Caterham";
        migprops.county = @"Surrey";
        migprops.country = @"United Kingdom";
        migprops.longitude = 51.2803;
        migprops.latitude = 0.0816;
        
        Hub *pr3d= [[Hub alloc] init];
        pr3d.name = @"Print3D";
        pr3d.city = @"Chelmsford";
        pr3d.county = @"Essex";
        pr3d.country = @"United Kingdom";
        pr3d.longitude = 51.7356;
        pr3d.latitude = 0.4685;
        
        Hub *thbul= [[Hub alloc] init];
        thbul.name = @"ThatBulgarian";
        thbul.city = @"Croydon";
        thbul.county = @"Greater London";
        thbul.country = @"United Kingdom";
        thbul.longitude = 51.3762;
        thbul.latitude = 0.0982;
        
        Hub *threedprintz= [[Hub alloc] init];
        threedprintz.name = @"3DPrintz";
        threedprintz.city = @"Dunstable";
        threedprintz.county = @"Bedfordshire";
        threedprintz.country = @"United Kingdom";
        threedprintz.longitude = 51.8856;
        threedprintz.latitude = -0.5204;
        
        
        [self.hubs addObject:Printhublondon];       
        [self.hubs addObject:LaMa1];
        [self.hubs addObject:LaMa2];
        [self.hubs addObject:threeDPworld];
        [self.hubs addObject:cncvac];
        [self.hubs addObject:technoid];
        [self.hubs addObject:roger];
        [self.hubs addObject:admg];
        [self.hubs addObject:hubcrash];
        [self.hubs addObject:zaxis];
        [self.hubs addObject:herts];
        [self.hubs addObject:ozoid];
        [self.hubs addObject:ptp];
        [self.hubs addObject:sean];
        [self.hubs addObject:bath];
        [self.hubs addObject:keymedia];
        [self.hubs addObject:b3dp];
        [self.hubs addObject:aidan];
        [self.hubs addObject:migprops];
        [self.hubs addObject:pr3d];
        [self.hubs addObject:thbul];
        [self.hubs addObject:threedprintz];
    
    }
    return self;
}
@end
