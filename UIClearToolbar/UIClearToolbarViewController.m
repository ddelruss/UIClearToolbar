//
//  UIClearToolbarViewController.m
//  UIClearToolbar
//
//  Created by Damien Del Russo on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIClearToolbarViewController.h"

@interface UIClearToolbarViewController ()

@end

@implementation UIClearToolbarViewController
@synthesize clearToolbar;

- (void)viewDidUnload
{
    [self setClearToolbar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
