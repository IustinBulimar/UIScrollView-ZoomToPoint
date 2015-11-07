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

- (void)centerView:(UIView *)view;

@end
