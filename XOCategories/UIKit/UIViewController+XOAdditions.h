//
//  UIViewController+XOAdditions.h
//  XOCategories
//
//  Created by Scott Petit on 9/17/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface UIViewController (XOAdditions)

- (void)xo_handleError:(NSError *)error;
- (void)xo_handleError:(NSError *)error withTitle:(NSString *)title;

@end
