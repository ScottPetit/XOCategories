//
//  NSString+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 9/8/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface NSString (XOAdditions)

/**
 Returns a string of the MD5 digest of the receiver.
 
 @return The string of the MD5 digest of the receiver.
 */
- (NSString *)xo_MD5String;

@end
