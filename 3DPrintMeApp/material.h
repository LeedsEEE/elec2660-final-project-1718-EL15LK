//
//  material.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface material : NSObject

//Different attributes for material are defined here.
@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *cost;
@property (strong,nonatomic) NSString *process;
@property (strong,nonatomic) NSString *quickinfo;
@property (strong,nonatomic) NSString *strength;
@property (strong,nonatomic) NSString *flexibility;
@property (strong,nonatomic) NSString *durability;
@property (strong,nonatomic) NSString *imagelink;

@end
