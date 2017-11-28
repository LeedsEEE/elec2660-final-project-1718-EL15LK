//
//  TabDataClass.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TabDataClass : NSObject                          //Tutorial used from Dr Evans Blog (eencae.wordpress.com/ios-tutorials)

@property (nonatomic,copy) NSString *lengthValue;
@property (nonatomic,copy) NSString *widthValue;
@property (nonatomic,copy) NSString *heightValue;
@property (nonatomic,copy) NSString *volumeValue;

+ (TabDataClass *) sharedInstance;

@end
