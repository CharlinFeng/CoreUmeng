//
//  CoreUmengShare.h
//  CoreUmeng
//
//  Created by 冯成林 on 15/6/26.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//  友盟分享

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CoreUmengShare : NSObject


/**
 *  分享
 *
 *  @param vc    控制器
 *  @param text  文字
 *  @param image 图片
 */
+(void)show:(UIViewController *)vc text:(NSString *)text image:(id)image;





@end
