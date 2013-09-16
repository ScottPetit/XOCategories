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

@end
