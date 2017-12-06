//
//  AppConstants.h
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

// This technique is adapted from the example on https://github.com/Jawbone/JBChartView
//

#define UIColorFromHex(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]

#pragma mark Images

#define TitleLogo @"TopBar.png"


#pragma mark Colors

#define baseColor UIColorFromHex(0xA6D4ED)                          //used baseColor because backgroundColor is a keyword
#define navbarColor UIColorFromHex(0x415185)                        //colour of the top navigation bar
#define buttonBaseColor UIColorFromHex(0xD08A11)                    //color of the fill in buttons
#define appRedColor UIColorFromHex(0xD44036)                        //red color defined for table view elements
#define appGreenColor UIColorFromHex(0x34983E)                      //green color defined for table view elements


// REFERENCES

// FDM and SLA image from website: http://apm-designs.com/fdm-vs-sla-3d-printer-tech-comparison
// original SLS image By Materialgeeza - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4032088 . Modified for consistency.
// Adding borders / curved edges from: https://stackoverflow.com/questions/34984966
// Modifying section headers from: https://stackoverflow.com/questions/19802336

