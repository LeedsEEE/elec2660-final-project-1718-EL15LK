//
//  AppConstants.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

// This technique is adapted from the example on https://github.com/Jawbone/JBChartView

#define UIColorFromHex(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]

#pragma mark Images

#define TitleLogo @"TopBar.png"


#pragma mark Colors

#define baseColor UIColorFromHex(0xA6D4ED)
#define navbarColor UIColorFromHex(0x415185)
#define buttonBaseColor UIColorFromHex(0xD08A11)
#define appRedColor UIColorFromHex(0xD44036)
#define appGreenColor UIColorFromHex(0x34983E)


