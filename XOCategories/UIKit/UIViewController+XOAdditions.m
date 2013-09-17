//
//  UIViewController+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 9/17/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIViewController+XOAdditions.h"

@implementation UIViewController (XOAdditions)

- (void)xo_handleError:(NSError *)error
{
    [self xo_handleError:error withTitle:@"We encountered a Problem"];
}

- (void)xo_handleError:(NSError *)error withTitle:(NSString *)title
{
    NSParameterAssert(title.length);
    
    if (!title.length)
    {
        return;
    }
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:error.localizedFailureReason delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alertView show];
}

@end
