//
//  UIScrollView+ZoomToPoint.h
//
//  Created by Iustin on 07/11/15.
//  Copyright (c) 2015 Iustin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (ZoomToPoint)

- (void)zoomToPoint:(CGPoint)zoomPoint
          withScale:(CGFloat)scale
           animated:(BOOL)animated;

/*!
 Center the view on the screen. Call this from -scrollViewDidZoom
 
 @param view The view to be centered
 */
- (void)centerView:(UIView *)view;

@end
