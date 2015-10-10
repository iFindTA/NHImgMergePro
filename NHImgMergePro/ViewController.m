//
//  ViewController.m
//  NHImgMergePro
//
//  Created by hu jiaju on 15/10/10.
//  Copyright © 2015年 hu jiaju. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Helper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *info = @"http://www.gongshidai.com";
    
    CGRect infoRect = CGRectMake(60, 100, 200, 200);
    UIImageView *origin = [[UIImageView alloc] initWithFrame:infoRect];
    UIImage *img = [UIImage generateQRCode:info size:infoRect.size];
    origin.image = img;
    [self.view addSubview:origin];
    
    ///中间icon logo大小不要超过二维码大小的0.25
    CGFloat t_scale = 0.25;
    infoRect.origin.y += 210;
    origin = [[UIImageView alloc] initWithFrame:infoRect];
    img = [img mergeImage:[UIImage imageNamed:@"icon"] size:CGSizeMake(infoRect.size.width*t_scale, infoRect.size.height*t_scale)];
    origin.image = img;
    [self.view addSubview:origin];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
