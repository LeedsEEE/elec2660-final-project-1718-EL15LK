//
//  DataModel.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "process.h"                                                         //import process and material classes
#import "material.h"
#import "hub.h"

@interface DataModel : NSObject

@property (strong,nonatomic) NSMutableArray *processes;                     //create two mutable arrays (one for processes and one for materials)
@property (strong,nonatomic) NSMutableArray *materials;
@property (strong,nonatomic) NSMutableArray *hubs;

@end
