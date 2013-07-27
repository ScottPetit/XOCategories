//
//  NSDictionary+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (XOAdditions)

/**
 Returns the object for the specified key or `nil` if the value is `[NSNull null]`.
 
 @param key The key used to look up the object in the receiver.
 
 @return The object for the specified key or `nil` if the value is `[NSNull null]`.
 */
- (id)xo_safeObjectForKey:(id)key;

@end
