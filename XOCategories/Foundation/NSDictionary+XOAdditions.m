//
//  NSDictionary+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "NSDictionary+XOAdditions.h"

@implementation NSDictionary (XOAdditions)

- (id)xo_safeObjectForKey:(id)key
{
    id object = self[key];
    if (object == [NSNull null])
    {
        object = nil;
    }
    
    return object;
}

- (id)xo_safeCopyForKey:(id)key
{
    id object = [self[key] copy];
    if (object == [NSNull null])
    {
        object = nil;
    }
    
    return object;
}

@end
