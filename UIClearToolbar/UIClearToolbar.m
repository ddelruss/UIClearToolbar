//
//  UIClearToolbar.m
//  UIClearToolbar
//
//  Created by Damien Del Russo on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIClearToolbar.h"

@implementation UIClearToolbar

- (void)layoutSubviews {
    // super has already laid out the subviews before this call is made.
    [self.subviews enumerateObjectsUsingBlock:^(UIView* obj, NSUInteger idx, BOOL *stop) {
        if (CGSizeEqualToSize(self.frame.size, obj.frame.size) ||
            self.frame.size.width <= obj.frame.size.width) {  // on device, the background is BIGGER than the toolbar.
            [obj removeFromSuperview];
            *stop = YES;
        }
    }];
}

@end
