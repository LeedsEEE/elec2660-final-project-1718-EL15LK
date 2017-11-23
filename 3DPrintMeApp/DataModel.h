//
//  DataModel.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "process.h"

@interface DataModel : NSObject

@property (strong,nonatomic) NSMutableArray *processes;
@property (strong,nonatomic) NSMutableArray *materials;

@end
