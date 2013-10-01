//
//  UIImage+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 10/1/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIImage+XOAdditions.h"

@implementation UIImage (XOAdditions)

+ (instancetype)imageForColor:(UIColor *)color size:(CGSize)size
{
    UIImage *image = nil;
    
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    
    UIGraphicsBeginImageContext(rect.size);
    {
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextSetFillColorWithColor(context, [color CGColor]);
        CGContextFillRect(context, rect);
        
        image = UIGraphicsGetImageFromCurrentImageContext();
    }
    UIGraphicsEndImageContext();
    
    return image;
}

@end
