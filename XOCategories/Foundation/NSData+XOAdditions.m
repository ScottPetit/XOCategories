//
//  NSData+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 8/10/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "NSData+XOAdditions.h"

static char xo_base64EncodingTable[64] = {
    'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P',
    'Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f',
    'g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v',
    'w','x','y','z','0','1','2','3','4','5','6','7','8','9','+','/' };

@implementation NSData (XOAdditions)

// Adapted from http://www.cocoadev.com/index.pl?BaseSixtyFour
- (NSString *)xo_base64EncodedString {
	const uint8_t *input = self.bytes;
	NSInteger length = self.length;
    
	NSMutableData *data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    uint8_t *output = (uint8_t *)data.mutableBytes;
    
    for (NSInteger i = 0; i < length; i += 3) {
        NSInteger value = 0;
        for (NSInteger j = i; j < (i + 3); j++) {
            value <<= 8;
            
            if (j < length) {
                value |= (0xFF & input[j]);
            }
        }
        
        NSInteger index = (i / 3) * 4;
        output[index + 0] = xo_base64EncodingTable[(value >> 18) & 0x3F];
        output[index + 1] = xo_base64EncodingTable[(value >> 12) & 0x3F];
        output[index + 2] = (i + 1) < length ? xo_base64EncodingTable[(value >> 6) & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? xo_base64EncodingTable[(value >> 0) & 0x3F] : '=';
    }
    
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}


// Adapted from http://www.cocoadev.com/index.pl?BaseSixtyFour
+ (NSData *)xo_dataWithBase64String:(NSString *)base64String {
	const char *string = [base64String cStringUsingEncoding:NSASCIIStringEncoding];
	NSInteger inputLength = base64String.length;
    
	if (string == NULL/* || inputLength % 4 != 0*/) {
		return nil;
	}
    
	while (inputLength > 0 && string[inputLength - 1] == '=') {
		inputLength--;
	}
    
	NSInteger outputLength = inputLength * 3 / 4;
	NSMutableData* data = [NSMutableData dataWithLength:outputLength];
	uint8_t *output = data.mutableBytes;
    
	NSInteger inputPoint = 0;
	NSInteger outputPoint = 0;
	while (inputPoint < inputLength) {
		char i0 = string[inputPoint++];
		char i1 = string[inputPoint++];
		char i2 = inputPoint < inputLength ? string[inputPoint++] : 'A'; /* 'A' will decode to \0 */
		char i3 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        
		output[outputPoint++] = (xo_base64EncodingTable[(int)i0] << 2) | (xo_base64EncodingTable[(int)i1] >> 4);
		if (outputPoint < outputLength) {
			output[outputPoint++] = ((xo_base64EncodingTable[(int)i1] & 0xf) << 4) | (xo_base64EncodingTable[(int)i2] >> 2);
		}
		if (outputPoint < outputLength) {
			output[outputPoint++] = ((xo_base64EncodingTable[(int)i2] & 0x3) << 6) | xo_base64EncodingTable[(int)i3];
		}
	}
    
	return data;
}

@end
