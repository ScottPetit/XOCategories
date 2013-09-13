//
//  NSDate+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 9/13/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface NSDate (XOAdditions)

- (BOOL)xo_isAfter:(NSDate *)aDate;

- (BOOL)xo_isOnOrAfter:(NSDate *)aDate;

- (BOOL)xo_isBefore:(NSDate *)aDate;

- (BOOL)xo_isOnOrBefore:(NSDate *)aDate;

@end
