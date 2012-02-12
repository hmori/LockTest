//
//  LTWindow.m
//  LockTest
//
//  Created by Hidetoshi Mori on 12/02/12.
//  Copyright (c) 2012年 Hidetoshi Mori. All rights reserved.
//

#import "LTWindow.h"
#import "LTAppDelegate.h"

@interface LTWindow ()
- (void)resetTimer;
- (void)expire;
@end


@implementation LTWindow

static NSTimeInterval secInterval = 5.0f;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self resetTimer];
    }
    return self;
}

- (void)sendEvent:(UIEvent *)event {
    [self resetTimer];
    [super sendEvent:event];
}

- (void)resetTimer {
    NSLog(@"reset timer");
    [_checkExpireTimer invalidate];
    _checkExpireTimer = [NSTimer scheduledTimerWithTimeInterval:secInterval 
                                                         target:self 
                                                       selector:@selector(expire) 
                                                       userInfo:nil 
                                                        repeats:NO];
}

- (void)expire {
    NSLog(@"exrire");
    [self resetTimer];
    [(LTAppDelegate *)[[UIApplication sharedApplication] delegate] lockScreen];
}

@end
