//
//  LTLockViewController.m
//  LockTest
//
//  Created by Hidetoshi Mori on 12/02/12.
//  Copyright (c) 2012年 Hidetoshi Mori. All rights reserved.
//

#import "LTLockViewController.h"

@implementation LTLockViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)loadView {
    [super loadView];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0, 0, 160, 44);
    [button setTitle:@"パスワードロック解除" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(close:) forControlEvents:UIControlEventTouchUpInside];
    button.center = self.view.center;
    
    [self.view addSubview:button];
    
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)close:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

@end
