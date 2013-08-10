//
//  NSData+XOAdditions.h
//  XOCategories
//
// Derived from http://colloquy.info/project/browser/trunk/NSDataAdditions.h?rev=1576
// Created by khammond on Mon Oct 29 2001.
// Formatted by Timothy Hatcher on Sun Jul 4 2004.
// Copyright (c) 2001 Kyle Hammond. All rights reserved.
// Original development by Dave Winer.
//
//  Created by Scott Petit on 8/10/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface NSData (XOAdditions)

/**
 Returns a string representation of the receiver Base64 encoded.
 
 @return A Base64 encoded string
 */
- (NSString *)xo_base64EncodedString;

/**
 Returns a new data contained in the Base64 encoded string.
 
 @param base64String A Base64 encoded string
 
 @return Data contained in `base64String`
 */
+ (NSData *)xo_dataWithBase64String:(NSString *)base64String;

@end
