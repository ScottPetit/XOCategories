//
//  XONSStringAdditionsTests.m
//  XOCategories
//
//  Created by Scott Petit on 9/9/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+XOAdditions.h"

@interface XONSStringAdditionsTests : XCTestCase

@end

@implementation XONSStringAdditionsTests

- (void)testThatStringsCanContainStrings
{
    NSString *testString = @"testString";
    
    XCTAssertTrue([testString xo_containsString:@"test"], @"%@ should contain the string ætest'", testString);
    
    XCTAssertFalse([testString xo_containsString:@"false"], @"%@ should not contain the string false", testString);
}

- (void)testThatStringsCanContainStringsCaseInsensitive
{
    NSString *testString = @"PM";
    
    XCTAssertFalse([testString xo_containsString:@"pm"], @"%@ should not contain the string pm", testString);
    XCTAssertFalse([testString xo_containsString:@"pm" options:0], @"%@ should not contain the string pm when not using case insensitive search", testString);
    XCTAssertTrue([testString xo_containsString:@"pm" options:NSCaseInsensitiveSearch], @"%@ should contain the string pm when using case insensitive search", testString);
}

@end
