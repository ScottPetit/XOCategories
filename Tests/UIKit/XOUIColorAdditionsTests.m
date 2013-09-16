//
//  XOUIColorAdditionsTests.m
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIColor+XOAdditions.h"

@interface XOUIColorAdditionsTests : XCTestCase

@end

@implementation XOUIColorAdditionsTests

- (void)testRed
{
    UIColor *redColor = [UIColor redColor];
    
    XCTAssertEqual([redColor xo_red], 1.0f, @"UIColor Red Color should have a red value equal to 1.0");
}

- (void)testGreen
{
    UIColor *greenColor = [UIColor greenColor];

    XCTAssertEqual([greenColor xo_green], 1.0f, @"Green Color should have a green value equal to 1.0");
}

- (void)testBlue
{
    UIColor *blueColor = [UIColor blueColor];
    
    XCTAssertEqual([blueColor xo_blue], 1.0f, @"Blue Color should have a blue value equal to 1.0");
}

- (void)testColors
{
    CGFloat red = 0.25f;
    CGFloat green = 0.35f;
    CGFloat blue = 0.75f;
    CGFloat alpha = 0.8f;
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    
    XCTAssertEqual([color xo_red], red, @"Red should equal red");
    XCTAssertEqual([color xo_green], green, @"Green should equal green");
    XCTAssertEqual([color xo_blue], blue, @"Blue should equal blue");
    XCTAssertEqual([color xo_alpha], alpha, @"Alpha should euqal alpha");
}

- (void)testColorsInNonRGBColorSpaces
{
    UIColor *color = [UIColor colorWithWhite:1.0 alpha:1.0];
    
    XCTAssertEqual([color xo_red], -1.0f, @"Colors in a non RGB color space should return -1.0f");
    XCTAssertEqual([color xo_green], -1.0f, @"Colors in a non RGB color space should return -1.0f");
    XCTAssertEqual([color xo_blue], -1.0f, @"Colors in a non RGB color space should return -1.0f");
}

- (void)testColorFromString
{
    XCTAssertNotNil([UIColor xo_colorFromString:@"red"], @"Color from string should return a color for 'red'");
    XCTAssertNotNil([UIColor xo_colorFromString:@"GrEeN"], @"Color from should return a color for 'GrEeN");
    XCTAssertNotNil([UIColor xo_colorFromString:@"BLUE"], @"Color from string should return a color for 'BLUE'");
    
    XCTAssertNil([UIColor xo_colorFromString:nil], @"Color from string should return a nil color for a nil string");
    XCTAssertNil([UIColor xo_colorFromString:@""], @"Color from string should return a nil color for an empty string");
    XCTAssertNil([UIColor xo_colorFromString:@"midnight-blue"], @"Color from string should return a nil color for an unsupported string");
}

@end
