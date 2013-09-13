//
//  NSDate+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 9/13/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "NSDate+XOAdditions.h"

@implementation NSDate (XOAdditions)

- (NSTimeInterval)numberOfSecondsInAMinute
{
    return 60;
}

- (NSTimeInterval)numberOfMinutesInAHour
{
    return 60;
}

- (NSTimeInterval)numberOfDaysInAWeek
{
    return 7;
}

- (NSTimeInterval)numberOfSecondsInAHour
{
    return [self numberOfSecondsInAMinute] * [self numberOfMinutesInAHour];
}

- (NSTimeInterval)numberOfHoursInADay
{
    return 24;
}

- (NSTimeInterval)numberOfSecondsInADay
{
    return [self numberOfHoursInADay] * [self numberOfSecondsInAHour];
}

- (NSTimeInterval)numberOfSecondsInAWeek
{
    return [self numberOfDaysInAWeek] * [self numberOfSecondsInADay];
}

- (BOOL)xo_isAfter:(NSDate *)aDate
{
    return [self compare:aDate] == NSOrderedDescending;
}

- (BOOL)xo_isOnOrAfter:(NSDate *)aDate
{
    return [self compare:aDate] == NSOrderedDescending || [aDate compare:self] == NSOrderedSame;
}

- (BOOL)xo_isBefore:(NSDate *)aDate
{
    return [self compare:aDate] == NSOrderedAscending;
}

- (BOOL)xo_isOnOrBefore:(NSDate *)aDate
{
    return [self compare:aDate] == NSOrderedAscending || [aDate compare:self] == NSOrderedSame;
}

@end
