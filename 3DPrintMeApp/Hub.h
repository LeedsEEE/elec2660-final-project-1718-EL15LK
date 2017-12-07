//
//  Hub.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hub : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *city;
@property (strong,nonatomic) NSString *county;
@property (strong,nonatomic) NSString *country;
@property float longitude;
@property float latitude;
@property int referenceID;

@end
