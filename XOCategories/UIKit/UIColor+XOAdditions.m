//
//  UIColor+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIColor+XOAdditions.h"

@implementation UIColor (XOAdditions)

- (CGFloat)xo_red
{
    CGColorRef color = self.CGColor;
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color)) != kCGColorSpaceModelRGB)
    {
        return -1.0f;
    }
    
    CGFloat const *components = CGColorGetComponents(color);
    return components[0];
}

- (CGFloat)xo_green
{
    CGColorRef color = self.CGColor;
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color)) != kCGColorSpaceModelRGB)
    {
        return -1.0f;
    }
    
    CGFloat const *components = CGColorGetComponents(color);
    return components[1];
}

- (CGFloat)xo_blue
{
    CGColorRef color = self.CGColor;
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color)) != kCGColorSpaceModelRGB)
    {
        return -1.0f;
    }
    
    CGFloat const *components = CGColorGetComponents(color);
    return components[2];
}

- (CGFloat)xo_alpha
{
    return CGColorGetAlpha(self.CGColor);
}

+ (instancetype)xo_colorFromString:(NSString *)colorString
{
    if (!colorString.length)
    {
        return nil;
    }
    
    NSString *lowercaseColor = [colorString lowercaseString];
    NSString *color = [lowercaseColor stringByAppendingString:@"Color"];
    
    SEL colorSelector = NSSelectorFromString(color);
    
    if ([UIColor respondsToSelector:colorSelector])
    {
        return [UIColor performSelector:colorSelector];
    }
    else
    {
        return nil;
    }
}

#pragma mark - Flat Colors

+ (UIColor *)xo_flatTurquoiseColor
{
    return XO_RGB(26, 188, 156);
}

+ (UIColor *)xo_flatGreenSeaColor
{
    return XO_RGB(22, 160, 133);
}

+ (UIColor *)xo_flatEmerlandColor
{
    return XO_RGB(46, 204, 113);
}

+ (UIColor *)xo_flatNephritisColor
{
    return XO_RGB(39, 174, 96);
}

+ (UIColor *)xo_flatPeterRiverColor
{
    return XO_RGB(52, 152, 219);
}

+ (UIColor *)xo_flatBelizeHoleColor
{
    return XO_RGB(41, 128, 185);
}

+ (UIColor *)xo_flatAmethystColor
{
    return XO_RGB(155, 89, 182);
}

+ (UIColor *)xo_flatWisteriaColor
{
    return XO_RGB(142, 68, 173);
}

+ (UIColor *)xo_flatWetAsphaltColor
{
    return XO_RGB(52, 73, 94);
}

+ (UIColor *)xo_flatMidnightBlueColor
{
    return XO_RGB(44, 62, 80);
}

+ (UIColor *)xo_flatSunflowerColor
{
    return XO_RGB(241, 196, 15);
}

+ (UIColor *)xo_flatOrangeColor
{
    return XO_RGB(243, 156, 18);
}

+ (UIColor *)xo_flatCarrotColor
{
    return XO_RGB(230, 126, 34);
}

+ (UIColor *)xo_flatPumpkinColor
{
    return XO_RGB(211, 84, 0);
}

+ (UIColor *)xo_flatAlizarinColor
{
    return XO_RGB(231, 76, 60);
}

+ (UIColor *)xo_flatPomegranateColor
{
    return XO_RGB(192, 57, 43);
}

+ (UIColor *)xo_flatCloudsColor
{
    return XO_RGB(236, 240, 241);
}

+ (UIColor *)xo_flatSilverColor
{
    return XO_RGB(189, 195, 199);
}

+ (UIColor *)xo_flatConcreteColor
{
    return XO_RGB(149, 165, 166);
}

+ (UIColor *)xo_flatAsbestosColor
{
    return XO_RGB(127, 140, 141);
}

@end
