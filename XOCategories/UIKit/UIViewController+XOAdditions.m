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
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:error.localizedFailureReason delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

- (void)xo_presentAlertWithTitle:(NSString *)title
{
    [self xo_presentAlertWithTitle:title message:nil];
}

- (void)xo_presentAlertWithTitle:(NSString *)title message:(NSString *)message
{
    NSParameterAssert(title.length);
    
    if (!title.length)
    {
        return;
    }
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:Nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

@end
