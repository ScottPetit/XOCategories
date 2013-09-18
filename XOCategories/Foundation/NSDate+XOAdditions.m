//
//  NSDate+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 9/13/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "NSDate+XOAdditions.h"

@implementation NSDate (XOAdditions)

+ (NSTimeInterval)xo_numberOfSecondsInAMinute
{
    return 60;
}

+ (NSTimeInterval)xo_numberOfMinutesInAHour
{
    return 60;
}

+ (NSTimeInterval)xo_numberOfDaysInAWeek
{
    return 7;
}

+ (NSTimeInterval)xo_numberOfSecondsInAHour
{
    return [self xo_numberOfSecondsInAMinute] * [self xo_numberOfMinutesInAHour];
}

+ (NSTimeInterval)xo_numberOfHoursInADay
{
    return 24;
}

+ (NSTimeInterval)xo_numberOfSecondsInADay
{
    return [self xo_numberOfHoursInADay] * [self xo_numberOfSecondsInAHour];
}

+ (NSTimeInterval)xo_numberOfSecondsInAWeek
{
    return [self xo_numberOfDaysInAWeek] * [self xo_numberOfSecondsInADay];
}

+ (NSDate *)xo_endOfToday
{
    return [[NSDate date] xo_endOfCurrentDay];
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

- (NSDate *)xo_endOfCurrentDay
{
    return [self xo_dateByAddingYears:0.0 months:0.0 weeks:0.0 days:1.0 hours:0.0 minutes:0.0 seconds:-1];
}

- (NSDate *)xo_dateByAddingYears:(NSInteger)years months:(NSInteger)months weeks:(NSInteger)weeks days:(NSInteger)days hours:(NSInteger)hours minutes:(NSInteger)minutes seconds:(NSInteger)seconds
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    if (years)      [dateComponents setYear:years];
    if (months)     [dateComponents setMonth:months];
    if (weeks)      [dateComponents setWeek:weeks];
    if (days)       [dateComponents setDay:days];
    if (hours)      [dateComponents setHour:hours];
    if (minutes)    [dateComponents setMinute:minutes];
    if (seconds)    [dateComponents setSecond:seconds];
    
    return [calendar dateByAddingComponents:dateComponents toDate:self options:0];
}

@end
