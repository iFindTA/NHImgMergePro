# NHImgMergePro
###iOS7.0+系统框架CoreImage生成二维码并添加logo
![image](https://github.com/iFindTA/screenshots/blob/master/ios_qrcode_0.png)
### Usgae:
##### 生成二维码原图：
```
	NSString *info = @"http://www.gongshidai.com";
    
    CGRect infoRect = CGRectMake(60, 100, 200, 200);
    UIImageView *origin = [[UIImageView alloc] initWithFrame:infoRect];
    UIImage *img = [UIImage generateQRCode:info size:infoRect.size];
    origin.image = img;
    [self.view addSubview:origin];

```
##### 添加icon logo：
```
 	///中间icon logo大小不要超过二维码大小的0.25
    CGFloat t_scale = 0.25;
    infoRect.origin.y += 210;
    origin = [[UIImageView alloc] initWithFrame:infoRect];
    img = [img mergeImage:[UIImage imageNamed:@"icon"] size:CGSizeMake(infoRect.size.width*t_scale, infoRect.size.height*t_scale)];
    origin.image = img;
    [self.view addSubview:origin];

```
