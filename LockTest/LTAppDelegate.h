//
//  LTAppDelegate.h
//  LockTest
//
//  Created by Hidetoshi Mori on 12/02/12.
//  Copyright (c) 2012年 Hidetoshi Mori. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LTViewController;

@interface LTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) LTViewController *viewController;

- (void)lockScreen;

@end
