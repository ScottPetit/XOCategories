//
//  XOUIViewAdditionsTests.m
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>
#import "UIView+XOAdditions.h"

@interface XOUIViewAdditionsTests : XCTestCase

@property (nonatomic, strong) UIView *view;

@end

@implementation XOUIViewAdditionsTests

- (void)setUp
{
    [super setUp];
    
    self.view = [[UIView alloc] init];
}

- (void)testWhenAViewIsVisible
{
    self.view.alpha = 1.0f;
    self.view.hidden = NO;
    XCTAssertTrue([self.view xo_visible], @"A view with an alpha of %f and hidden set to %i should be visible", self.view.alpha, self.view.hidden);
}

- (void)testWhenAViewIsNotVisible
{
    self.view.alpha = 0.0f;
    self.view.hidden = NO;
    XCTAssertFalse([self.view xo_visible], @"A view with an alpha of %f and hidden set to %i should not be visible", self.view.alpha, self.view.hidden);
    
    self.view.alpha = 1.0f;
    self.view.hidden = YES;
    XCTAssertFalse([self.view xo_visible], @"A view with an alpha of %f and hidden set to %i should not be visible", self.view.alpha, self.view.hidden);
}

- (void)testFadingIn
{
    self.view.alpha = 0.0f;
    
    [self.view xo_fadeInWithCompletion:^(BOOL finished) {
        if (finished)
        {
            XCTAssertEquals(self.view.alpha, 1.0f, @"After fading in a view should have an alpha of 1.0");
        }
    }];
}

- (void)testFadingOut
{
    self.view.alpha = 1.0f;
    
    [self.view xo_fadeOutWithCompletion:^(BOOL finished) {
        if (finished)
        {
            XCTAssertEquals(self.view.alpha, 0.0f, @"After fading out a view should have an alpha of 0.0");
        }
    }];
}

@end
