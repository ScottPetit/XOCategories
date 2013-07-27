//
//  XONSDictionaryAdditionsTests.m
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Foundation/Foundation.h>
#import "NSDictionary+XOAdditions.h"

@interface XONSDictionaryAdditionsTests : XCTestCase

@end

@implementation XONSDictionaryAdditionsTests

- (void)testThatDictionaryReturnsSafeObjects
{
    NSDictionary *dictionary = @{@"null": [NSNull null], @"object": [[NSObject alloc] init]};
    
    XCTAssertNil([dictionary xo_safeObjectForKey:@"null"], @"The dictionary should return a nil object when the object is 'NSNull null'");
    
    XCTAssertNotNil([dictionary xo_safeObjectForKey:@"object"], @"Safe Object for key should not return a nil object for key 'object'");
}

@end
