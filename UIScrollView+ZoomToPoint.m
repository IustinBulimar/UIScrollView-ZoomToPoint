//
//  UIScrollView+ZoomToPoint.h
//
//  Created by Iustin on 07/11/15.
//  Copyright (c) 2015 Iustin. All rights reserved.
//

@implementation UIScrollView (ZoomToPoint)

- (void)zoomToPoint:(CGPoint)zoomPoint withScale:(CGFloat)scale animated:(BOOL)animated {
    
    CGRect  viewFrame = [self.delegate viewForZoomingInScrollView:self].bounds;
    
    CGFloat newWidth  = CGRectGetWidth(viewFrame)  / scale;
    CGFloat newHeight = CGRectGetHeight(viewFrame) / scale;
    CGFloat newX = zoomPoint.x - newWidth / 2;
    CGFloat newY = zoomPoint.y - newHeight / 2;
    CGRect zoomRect = CGRectMake(newX, newY, newWidth, newHeight);
    [self zoomToRect:zoomRect animated:animated];
}

- (void)centerView:(UIView *)view {
    CGSize boundsSize = self.bounds.size;
    CGRect contentsFrame = view.frame;
    
    if (contentsFrame.size.width < boundsSize.width) {
        contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0;
    } else {
        contentsFrame.origin.x = 0.0;
    }
    
    if (contentsFrame.size.height < boundsSize.height) {
        contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0;
    } else {
        contentsFrame.origin.y = 0.0;
    }
    
    view.frame = contentsFrame;
}

@end
