//
//  ViewController.m
//  SampleViewAntialisasing
//
//  Created by  on 11/10/26.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // UIViewの生成
    UIView *uv = [[UIView alloc] init];
    uv.frame = CGRectMake(0, 0, 200, 200);
    uv.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    uv.backgroundColor = [UIColor redColor];
    [self.view addSubview:uv];
    
    // アフィン変換
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI * 30.0 / 180.0f);
    uv.transform = CGAffineTransformTranslate(transform, 0.0, 0.0);
    uv.bounds = CGRectMake(0, 0, 200, 200);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
