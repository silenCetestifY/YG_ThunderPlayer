//
//  ViewController.m
//  yg_mediaDemo
//
//  Created by silenCetestifY on 16/6/22.
//  Copyright © 2016年 yg_self. All rights reserved.
//

#import "ViewController.h"
#import <YG_MeidaView.h>

@interface ViewController ()<VideoPlayViewDelegate>

/** videoPlayer */
@property (nonatomic,strong) VideoPlayView *playView;
/** fullVc */
@property (nonatomic,strong) FullViewController *fullVc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    VideoPlayView *playView = [VideoPlayView videoPlayView];
    self.fullVc = [[FullViewController alloc] init];
    playView.delegate = self;
    self.playView = playView;
    
    
    AVPlayerItem *playItem = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:@"http://wvideo.spriteapp.cn/video/2016/0619/576618c996134_wpd.mp4"]];
    
    
    self.playView.playerItem = playItem;
    [self.view addSubview:self.playView];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.playView.frame = CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, 260);
}

-(void)videoplayViewSwitchOrientation:(BOOL)isFull
{
    if (isFull) {
        [self presentViewController:self.fullVc animated:YES completion:^{
            self.playView.frame = self.fullVc.view.bounds;
            [self.fullVc.view addSubview:self.playView];
        }];
    } else {
        [self.fullVc dismissViewControllerAnimated:YES completion:^{
            self.playView.frame = self.view.bounds;
            [self.view addSubview:self.playView];
        }];
    }
}



@end
