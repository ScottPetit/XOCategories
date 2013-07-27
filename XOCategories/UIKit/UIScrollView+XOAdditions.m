//
//  UIScrollView+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIScrollView+XOAdditions.h"

@implementation UIScrollView (XOAdditions)

- (void)xo_scrollToTop
{
    [self xo_scrollToTopAnimated:NO];
}

- (void)xo_scrollToTopAnimated:(BOOL)animated
{
    [self setContentOffset:CGPointZero animated:animated];
}

@end
