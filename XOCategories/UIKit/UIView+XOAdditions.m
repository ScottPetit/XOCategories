//
//  UIView+XOAdditions.m
//  XOCategories
//
//  Created by Scott Petit on 7/20/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIView+XOAdditions.h"

static NSInteger const kAnimationDuration = 0.3;

@implementation UIView (XOAdditions)

- (void)xo_fadeOut
{
    [self xo_fadeOutWithCompletion:nil];
}

- (void)xo_fadeOutWithCompletion:(XOCompletionBlock)completionBlock
{
    [UIView animateWithDuration:kAnimationDuration animations:^{
        self.alpha = 0.0;
    } completion:completionBlock];
}

- (void)xo_fadeOutAndRemove
{
    [self xo_fadeOutWithCompletion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (void)xo_fadeIn
{
    [self xo_fadeInWithCompletion:nil];
}

- (void)xo_fadeInWithCompletion:(XOCompletionBlock)completionBlock
{
    [UIView animateWithDuration:kAnimationDuration animations:^{
        self.alpha = 1.0;
    } completion:completionBlock];
}

- (BOOL)xo_visible
{
    return !self.hidden && self.alpha != 0;
}

@end
