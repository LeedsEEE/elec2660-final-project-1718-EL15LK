//
//  TabDataClass.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TabDataClass : NSObject                          //Tutorial used from Dr Evans Blog (eencae.wordpress.com/ios-tutorials)

@property float lengthValue;
@property float widthValue;
@property float heightValue;
@property float volumeValue;

@property (nonatomic,copy) NSString *inputType;

+ (TabDataClass *) sharedInstance;

@end
