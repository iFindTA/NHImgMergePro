//
//  UIImage+Helper.h
//  NHImgMergePro
//
//  Created by hu jiaju on 15/10/10.
//  Copyright © 2015年 hu jiaju. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Helper)

/**
 *	@brief	generate qr code
 *
 *	@param 	code 	info string
 *	@param 	size 	image size
 *
 *	@return	the info qr code image
 */
+ (UIImage *)generateQRCode:(NSString *)code size:(CGSize)size;

/**
 *	@brief	generate bar code
 *
 *	@param 	code 	info string
 *	@param 	size 	image size
 *
 *	@return	the info bar code image
 */
+ (UIImage *)generateBarCode:(NSString *)code size:(CGSize)size;

/**
 *	@brief	merge image
 *
 *	@param 	icon 	the small icon image to merge in center
 *	@param 	size 	meger size
 *
 *	@return	merged image
 */
- (UIImage *)mergeImage:(UIImage *)icon size:(CGSize)size;

@end
