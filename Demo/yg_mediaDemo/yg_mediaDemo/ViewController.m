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

/** 你需要个PlayerView用来播放 */
@property (nonatomic,strong) VideoPlayView *playView;
/** 全屏视图 */
@property (nonatomic,strong) FullViewController *fullVc;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 创建playView，设置其代理
    self.playView  = [VideoPlayView videoPlayView];
    self.playView.delegate = self;
    self.fullVc = [[FullViewController alloc] init];
    
    // 给入一个URL地址
    AVPlayerItem *playItem = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:@"http://baobab.cdn.wandoujia.com/14468618701471.mp4"]];
    self.playView.playerItem = playItem;
    
    // 设置frame添加到View上
    self.playView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width*9/16);
    [self.view addSubview:self.playView];
    
}


#pragma mark - playView代理，实现全屏
-(void)videoplayViewSwitchOrientation:(BOOL)isFull
{
    if (isFull) {
        [self presentViewController:self.fullVc animated:YES completion:^{
            self.playView.frame = self.fullVc.view.bounds;
            [self.fullVc.view addSubview:self.playView];
        }];
    } else {
        [self.fullVc dismissViewControllerAnimated:YES completion:^{
            [self.view addSubview:self.playView];
            // 这里设置返回时的frame
            self.playView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width*9/16);
        }];
    }
}



@end
