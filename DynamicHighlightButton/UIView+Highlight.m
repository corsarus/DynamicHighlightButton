//
//  UIView+Highlight.m
//  DynamicHighlightButton
//
//  Created by admin on 01/04/15.
//  Copyright (c) 2015 corsarus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Highlight.h"

@implementation UIView (Highlight)

- (UIImage *)highlightedImage
{
    // Get the bitmap representation of the view
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0);
    CGContextClipToRect (UIGraphicsGetCurrentContext(), self.bounds);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *imageToHighlight = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    // Invert colors to create highlighted image
    CIImage *image = [CIImage imageWithCGImage:imageToHighlight.CGImage];
    CIFilter *highlightFilter = [CIFilter filterWithName:@"CIColorInvert" keysAndValues:kCIInputImageKey, image, nil];
    return [UIImage imageWithCIImage:highlightFilter.outputImage];
    
}

@end
