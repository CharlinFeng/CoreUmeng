//
//  CoreUMeng.m
//  CoreUmeng
//
//  Created by 冯成林 on 15/6/26.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "CoreUMeng.h"
#import "UMSocial.h"
#import "UMSocialWechatHandler.h"
#import "UMSocialQQHandler.h"
#import "UMSocialSinaHandler.h"


static NSString *StaticUMengAppKey;

@implementation CoreUMeng


/**
 *  设置AppKey
 *
 *  @param appKey 友盟AppKey
 */
+(void)umengSetAppKey:(NSString *)appKey{
    [UMSocialData setAppKey:appKey];
    StaticUMengAppKey = appKey;
}



/**
 *  获取AppKey
 *
 *  @return AppKey
 */
+(NSString *)umengGetAppKey{
    return StaticUMengAppKey;
}




/**
 *  集成新浪微博SSO
 *
 *  @param redirectURL 重定向URL
 */
+(void)umengSetSinaSSOWithRedirectURL:(NSString *)redirectURL{
    [UMSocialSinaHandler openSSOWithRedirectURL:redirectURL];
}




/**
 *  集成微信
 *
 *  @param wxAppId   wxAppId
 *  @param appSecret appSecret
 *  @param url       微信消息url地址
 */
+(void)umengSetWXAppId:(NSString *)wxAppId appSecret:(NSString *)appSecret url:(NSString *)url{
    [UMSocialWechatHandler setWXAppId:wxAppId appSecret:appSecret url:url];
    
    //隐藏不可用分享平台
    [self hiddenNotInstallPlatforms];
}



/**
 *  集成QQ和QQ空间
 *
 *  @param QQAppId   QQAppId
 *  @param appSecret appSecret
 *  @param url       QQ和QQ空间消息url地址
 */
+(void)umengSetQQAppId:(NSString *)qqAppId appSecret:(NSString *)appSecret url:(NSString *)url{
    [UMSocialQQHandler setQQWithAppId:qqAppId appKey:appSecret url:url];
    
    //隐藏不可用分享平台
    [self hiddenNotInstallPlatforms];
}












/** 隐藏不可用分享平台 */
+(void)hiddenNotInstallPlatforms{
        [UMSocialConfig hiddenNotInstallPlatforms:@[UMShareToQQ, UMShareToQzone, UMShareToWechatTimeline, UMShareToWechatSession,UMShareToWechatFavorite]];
}


/*
 *  集成SSO回调
 */
+(BOOL)umengHandleOpenURL:(NSURL *)url{
    return  [UMSocialSnsService handleOpenURL:url];
}




@end
