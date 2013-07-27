//
//  UIScrollView+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 7/27/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (XOAdditions)

/**
 Scroll to the top of the receiver without animation.
 */
- (void)xo_scrollToTop;

/**
 Scroll to the top of the receiver.
 
 @param animated 'YES' to animate the transition at a constant velocity, 'NO' to change the offset immediately.
 */
- (void)xo_scrollToTopAnimated:(BOOL)animated;

@end
