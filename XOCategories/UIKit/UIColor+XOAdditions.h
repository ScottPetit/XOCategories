//
//  UIColor+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (XOAdditions)

/**
 The receiver's red component value. (read-only)
 
 The value of this property is a floating-point number in the range `0.0` to `1.0`. `-1.0` is returned if the color is
 not in the RGB colorspace.
 */
- (CGFloat)xo_red;

/**
 The receiver's green component value. (read-only)
 
 The value of this property is a floating-point number in the range `0.0` to `1.0`. `-1.0` is returned if the color is
 not in the RGB colorspace.
 */
- (CGFloat)xo_green;

/**
 The receiver's blue component value. (read-only)
 
 The value of this property is a floating-point number in the range `0.0` to `1.0`. `-1.0` is returned if the color is
 not in the RGB colorspace.
 */
- (CGFloat)xo_blue;

/**
 The receiver's alpha value. (read-only)
 
 The value of this property is a floating-point number in the range `0.0` to `1.0`, where `0.0` represents totally
 transparent and `1.0` represents totally opaque.
 */
- (CGFloat)xo_alpha;

/**
 A collection of Flat colors based on http://flatuicolors.com/
*/
+ (UIColor *)xo_flatTurquoiseColor;
+ (UIColor *)xo_flatGreenSeaColor;
+ (UIColor *)xo_flatEmerlandColor;
+ (UIColor *)xo_flatNephritisColor;
+ (UIColor *)xo_flatPeterRiverColor;
+ (UIColor *)xo_flatBelizeHoleColor;
+ (UIColor *)xo_flatAmethystColor;
+ (UIColor *)xo_flatWisteriaColor;
+ (UIColor *)xo_flatWetAsphaltColor;
+ (UIColor *)xo_flatMidnightBlueColor;
+ (UIColor *)xo_flatSunflowerColor;
+ (UIColor *)xo_flatOrangeColor;
+ (UIColor *)xo_flatCarrotColor;
+ (UIColor *)xo_flatPumpkinColor;
+ (UIColor *)xo_flatAlizarinColor;
+ (UIColor *)xo_flatPomegranateColor;
+ (UIColor *)xo_flatCloudsColor;
+ (UIColor *)xo_flatSilverColor;
+ (UIColor *)xo_flatConcreteColor;
+ (UIColor *)xo_flatAsbestosColor;

@end
