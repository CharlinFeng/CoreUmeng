//
//  CoreUmengShare.m
//  CoreUmeng
//
//  Created by 冯成林 on 15/6/26.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "CoreUmengShare.h"
#import "CoreUMeng.h"
#import "UMSocial.h"
#import "UIViewController+Umeng.h"


@interface CoreUmengShare ()<UMSocialUIDelegate>

@end

@implementation CoreUmengShare






/**
 *  分享
 *
 *  @param vc    控制器
 *  @param text  文字
 *  @param image 图片
 */
+(void)show:(UIViewController *)vc text:(NSString *)text image:(id)image{

    [UMSocialSnsService presentSnsIconSheetView:vc appKey:[CoreUMeng umengGetAppKey] shareText:text shareImage:image shareToSnsNames:@[UMShareToSina,UMShareToWechatFavorite,UMShareToTencent,UMShareToSms,UMShareToRenren,UMShareToEmail,UMShareToDouban,UMShareToWechatTimeline,UMShareToWechatSession,UMShareToQQ,UMShareToQzone] delegate:vc];
}






@end
