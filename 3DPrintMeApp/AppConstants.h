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

#define TitleLogo @"TopBar.png"                                     //Title / Header logo


#pragma mark Colors

#define baseColor UIColorFromHex(0xA6D4ED)                          //used baseColor because backgroundColor is a keyword
#define navbarColor UIColorFromHex(0x415185)                        //colour of the top navigation bar
#define buttonBaseColor UIColorFromHex(0xD08A11)                    //color of the fill in buttons
#define appRedColor UIColorFromHex(0xD44036)                        //red color defined for table view elements
#define appGreenColor UIColorFromHex(0x34983E)                      //green color defined for table view elements

#pragma mark Costs

#define fdmcost 0.60
#define slacost 2.10
#define slscost 7.32


// REFERENCES

// Coordinates for Leeds: 53.806682 & -1.555033

/* STL Reference
 * iPhoneMoney Clip: https://www.thingiverse.com/thing:215687
 * Parameters were found by me using Slic3r software
 */

/* Image References
 * FDM and SLA Images from: http://apm-designs.com/fdm-vs-sla-3d-printer-tech-comparison
 * Original SLS Image by: Materialgeeza - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4032088 Modified on paint for consistency.
 * Material Images from: https://all3dp.com/1/3d-printer-filament-types-3d-printing-3d-filament/
 */

/* Code References
 * Technique of having appconstants.h, assigning header logo and defining color from hex is from an example on https://github.com/Jawbone/JBChartView
 * Adding borders / curved edges to imageview elements from: https://stackoverflow.com/questions/34984966 Modified similarly for sceneview.
 * Modifying section headers from: https://stackoverflow.com/questions/19802336
 * Header title setup: https://stackoverflow.com/questions/10505708/how-to-set-the-uitableview-section-title-programmatically-iphone-ipad
 * Keyboard type to decimal: stackoverflow.com/questions/2079987
 * UIAlert code: Apple Documentation
 * Sending data from one tab to another: Dr Craig Evans Blog
 * UIKit: Apple Documentation
 */

/* Stl to SCN Parsing
 * The parser headers are from https://github.com/victorgama/HxSTLParser. This allowed me to use stl files instead of setting up custom scene files in xcode.
 * Scene setup from apple documentation
 */

/* Information references
 * Information on processes: www.sculpteo.com
 * Information on materials from: www.3dhubs.com & all3dp.com
 */

/* Other references
 * Cost price of processes from 3Dhubs.com (I uploaded a test file and obtained a few quotes, I then averaged the quotes and manipulated it to be per cm3)
 */


