//
//  UIScrollView+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (XOAdditions)

- (void)xo_scrollToTop;

- (void)xo_scrollToTopAnimated:(BOOL)animated;

@end
