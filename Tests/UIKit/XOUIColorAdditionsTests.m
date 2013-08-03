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

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testRed
{
    UIColor *redColor = [UIColor redColor];
    
    XCTAssertEquals([redColor xo_red], 1.0f, @"UIColor Red Color should have a red value equal to 1.0");
}

- (void)testGreen
{
    UIColor *greenColor = [UIColor greenColor];

    XCTAssertEquals([greenColor xo_green], 1.0f, @"Green Color should have a green value equal to 1.0");
}

- (void)testBlue
{
    UIColor *blueColor = [UIColor blueColor];
    
    XCTAssertEquals([blueColor xo_blue], 1.0f, @"Blue Color should have a blue value equal to 1.0");
}

- (void)testColors
{
    CGFloat red = 0.25f;
    CGFloat green = 0.35f;
    CGFloat blue = 0.75f;
    CGFloat alpha = 0.8f;
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    
    XCTAssertEquals([color xo_red], red, @"Red should equal red");
    XCTAssertEquals([color xo_green], green, @"Green should equal green");
    XCTAssertEquals([color xo_blue], blue, @"Blue should equal blue");
    XCTAssertEquals([color xo_alpha], alpha, @"Alpha should euqal alpha");
}

- (void)testColorsInNonRGBColorSpaces
{
    UIColor *color = [UIColor colorWithWhite:1.0 alpha:1.0];
    
    XCTAssertEquals([color xo_red], -1.0f, @"Colors in a non RGB color space should return -1.0f");
    XCTAssertEquals([color xo_green], -1.0f, @"Colors in a non RGB color space should return -1.0f");
    XCTAssertEquals([color xo_blue], -1.0f, @"Colors in a non RGB color space should return -1.0f");
}

@end
