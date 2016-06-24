//
//  ViewController.m
//  yg_mediaDemo
//
//  Created by silenCetestifY on 16/6/22.
//  Copyright © 2016年 yg_self. All rights reserved.
//

#import "ViewController.h"
#import <YG_MeidaView.h>

@interface ViewController ()

/** videoPlayer */
@property (nonatomic,strong) VideoPlayView *playView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    VideoPlayView *playView = [VideoPlayView videoPlayView];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
