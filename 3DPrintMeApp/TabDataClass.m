//
//  TabDataClass.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TabDataClass.h"

//Tutorial used from Dr Evans Blog (eencae.wordpress.com/ios-tutorials)

@implementation TabDataClass
@synthesize lengthValue = _lengthValue;
@synthesize widthValue = _widthValue;
@synthesize heightValue = _heightValue;
@synthesize volumeValue = _volumeValue;

static TabDataClass *_sharedInstance;

- (id) init {
    if (self = [super init]) {
        //custom initialization
    }
    return self;
}

+ (TabDataClass *) sharedInstance
{
    if (!_sharedInstance) {
        _sharedInstance = [[TabDataClass alloc] init];
    }
    return _sharedInstance;
}
@end
