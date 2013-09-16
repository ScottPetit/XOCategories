//
//  XONSDateAdditionsTests.m
//  XOCategories
//
//  Created by Scott Petit on 9/13/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDate+XOAdditions.h"

@interface XONSDateAdditionsTests : XCTestCase

@property (nonatomic, strong) NSDate *date;

@end

//- (NSTimeInterval)numberOfSecondsInAMinute;
//- (NSTimeInterval)numberOfMinutesInAHour;
//- (NSTimeInterval)numberOfDaysInAWeek;
//- (NSTimeInterval)numberOfSecondsInAHour;
//- (NSTimeInterval)numberOfHoursInADay;
//- (NSTimeInterval)numberOfSecondsInADay;
//- (NSTimeInterval)numberOfSecondsInAWeek;
//
//- (BOOL)xo_isAfter:(NSDate *)aDate;
//
//- (BOOL)xo_isOnOrAfter:(NSDate *)aDate;
//
//- (BOOL)xo_isBefore:(NSDate *)aDate;
//
//- (BOOL)xo_isOnOrBefore:(NSDate *)aDate;

@implementation XONSDateAdditionsTests

- (void)setUp
{
    [super setUp];
    
    self.date = [NSDate date];
}

- (void)testNumberOfSecondsInAMinute
{
    XCTAssertEqualObjects(@60, @([NSDate xo_numberOfSecondsInAMinute]), @"The number of seconds in a minute is 60");
}

- (void)testNumberOfMinutesInAHour
{
    XCTAssertEqualObjects(@60, @([NSDate xo_numberOfMinutesInAHour]), @"The number of minutes in a hour is 60");
}

- (void)testTheNumberOfDaysInAWeek
{
    XCTAssertEqualObjects(@7, @([NSDate xo_numberOfDaysInAWeek]), @"The number of days in a week is 7");
}

- (void)testTheNumberOfMinutesInAHour
{
    XCTAssertEqualObjects(@3600, @([NSDate xo_numberOfSecondsInAHour]), @"The number of seconds in a hour is 3600");
}

- (void)testTheNumberOfHoursInADay
{
    XCTAssertEqualObjects(@24, @([NSDate xo_numberOfHoursInADay]), @"The number of hours in a day is 24");
}

- (void)testTheNumberOfSecondsInADay
{
    XCTAssertEqualObjects(@86400, @([NSDate xo_numberOfSecondsInADay]), @"The number of seconds in a day is 86400");
}

- (void)testTheNumberOfSecondsInAWeek
{
    XCTAssertEqualObjects(@604800, @([NSDate xo_numberOfSecondsInAWeek]), @"The number of seconds in a week is 604800");
}

- (void)testIsAfter
{
    NSDate *afterDate = [self.date dateByAddingTimeInterval:-5000];
    
    XCTAssertTrue([self.date xo_isAfter:afterDate], @"The current date should be after the afterDate - %@", afterDate);
}

- (void)testIsOnOrAfter
{
    NSDate *afterDate = [self.date dateByAddingTimeInterval:-5000];
    
    XCTAssertTrue([self.date xo_isOnOrAfter:afterDate], @"The current date should be on or after the afterDate - %@", afterDate);
    XCTAssertTrue([self.date xo_isOnOrAfter:self.date], @"The current date should be on or after the current date - %@", self.date);
}

- (void)testIsBefore
{
    NSDate *beforeDate = [self.date dateByAddingTimeInterval:5000];
    
    XCTAssertTrue([self.date xo_isBefore:beforeDate], @"The current date should be before the beforeDate - %@", beforeDate);
}

- (void)testIsOnOrBefore
{
    NSDate *beforeDate = [self.date dateByAddingTimeInterval:5000];
    
    XCTAssertTrue([self.date xo_isOnOrBefore:beforeDate], @"The current date should be on or before the before date - %@", beforeDate);
    XCTAssertTrue([self.date xo_isOnOrBefore:self.date], @"The current date should be on or before the current date - %@", self.date);
}

@end
