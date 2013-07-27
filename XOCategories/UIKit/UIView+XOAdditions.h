//
//  UIView+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 7/20/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^XOCompletionBlock)(BOOL finished);

@interface UIView (XOAdditions)

/**
 Fade out the current view in 0.3 seconds.
*/
- (void)xo_fadeOut;

/**
 Fades out the current view in 0.3 seconds with an optional completion block.
 */
- (void)xo_fadeOutWithCompletion:(XOCompletionBlock)completionBlock;

/**
 Fades out the current view in 0.3 seconds and removes it from it's super view.
 */
- (void)xo_fadeOutAndRemove;

/**
 Fade in the current view in 0.3 seconds.
 */
- (void)xo_fadeIn;

/**
 Fades in the current view in 0.3 seconds with an optional completion block.
*/
- (void)xo_fadeInWithCompletion:(XOCompletionBlock)completionBlock;

/**
 Checks the alpha and hidden property of the view. Does not check it's location or superview.
 
 @return A BOOL indicating whther the view is visible.  If YES the views hidden property is set to NO and the view's alpha is non-zero.
 */
- (BOOL)xo_visible;

@end
