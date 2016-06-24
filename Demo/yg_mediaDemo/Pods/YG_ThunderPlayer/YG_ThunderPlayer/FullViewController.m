//
//  FullViewController.m
//  YG_MediaView
//
//  Created by apple on 16/6/06.
//  Copyright (c) 2016年 yg_Code. All rights reserved.
//

#import "FullViewController.h"

@interface FullViewController ()

@end

@implementation FullViewController

- (instancetype)init
{
    if (self = [super init]) {
        // self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    }
    return self;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft|UIInterfaceOrientationMaskLandscapeRight;
}

@end
