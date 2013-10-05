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

@end
