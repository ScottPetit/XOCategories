//
//  XONSDictionaryAdditionsTests.m
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NSDictionary+XOAdditions.h"

@interface XONSDictionaryAdditionsTests : XCTestCase

@property (nonatomic, strong) NSDictionary *dictionary;

@end

@implementation XONSDictionaryAdditionsTests

#pragma mark - SetUp

- (void)setUp
{
    [super setUp];
    
    self.dictionary = @{@"null": [NSNull null], @"object": [UIView new]};
}

- (void)testThatDictionaryReturnsSafeObjects
{
    XCTAssertNil([self.dictionary xo_safeObjectForKey:@"null"], @"The dictionary should return a nil object when the object is 'NSNull null'");
    
    XCTAssertNotNil([self.dictionary xo_safeObjectForKey:@"object"], @"Safe Object for key should not return a nil object for key 'object'");
}

- (void)testThatDictionaryReturnsSafeCopies
{
    XCTAssertNotNil([self.dictionary xo_safeCopyForKey:@"null"], @"The dictionary should return a nil object when the object is 'NSNull null'");
    
    XCTAssertEqualObjects([[self.dictionary xo_safeCopyForKey:@"object"] class], [UIView class], @"The class of a copy should be the same.");
}

@end
