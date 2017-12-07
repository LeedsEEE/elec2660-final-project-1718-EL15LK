//
//  ExampleModel.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExampleModel : NSObject

@property (strong,nonatomic) NSString *name;
@property float length;
@property float width;
@property float height;
@property float volume;
@property (strong,nonatomic) NSString *stllink;

@end
