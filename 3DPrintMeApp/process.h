//
//  process.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface process : NSObject

//Different attributes are defined here. As this class only holds data, no methods are required to be defined.
@property (nonatomic,strong) NSString *name;
@property float cost;
@property int resolution;
@property (nonatomic,strong) NSString *speed;
@property (nonatomic,strong) NSString *quickinfo;
@property (nonatomic,strong) NSString *materialusage;

@end
