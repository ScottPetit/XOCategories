//
//  NSDate+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 9/13/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "NSDate+XOAdditions.h"

@implementation NSDate (XOAdditions)

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
