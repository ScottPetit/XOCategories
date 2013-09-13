//
//  NSDate+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 9/13/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface NSDate (XOAdditions)

+ (NSTimeInterval)xo_numberOfSecondsInAMinute;
+ (NSTimeInterval)xo_numberOfMinutesInAHour;
+ (NSTimeInterval)xo_numberOfDaysInAWeek;
+ (NSTimeInterval)xo_numberOfSecondsInAHour;
+ (NSTimeInterval)xo_numberOfHoursInADay;
+ (NSTimeInterval)xo_numberOfSecondsInADay;
+ (NSTimeInterval)xo_numberOfSecondsInAWeek;

- (BOOL)xo_isAfter:(NSDate *)aDate;

- (BOOL)xo_isOnOrAfter:(NSDate *)aDate;

- (BOOL)xo_isBefore:(NSDate *)aDate;

- (BOOL)xo_isOnOrBefore:(NSDate *)aDate;

@end
