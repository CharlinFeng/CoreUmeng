//
//  CoreUMeng.h
//  CoreUmeng
//
//  Created by 冯成林 on 15/6/26.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreUmengShare.h"

@interface CoreUMeng : NSObject




/**
 *  设置AppKey
 *
 *  @param appKey 友盟AppKey
 */
+(void)umengSetAppKey:(NSString *)appKey;



/**
 *  获取AppKey
 *
 *  @return AppKey
 */
+(NSString *)umengGetAppKey;




/**
 *  集成新浪微博SSO
 *
 *  @param redirectURL 重定向URL
 */
+(void)umengSetSinaSSOWithRedirectURL:(NSString *)redirectURL;



/**
 *  集成微信
 *
 *  @param wxAppId   wxAppId
 *  @param appSecret appSecret
 *  @param url       微信消息url地址
 */
+(void)umengSetWXAppId:(NSString *)wxAppId appSecret:(NSString *)appSecret url:(NSString *)url;



/**
 *  集成QQ和QQ空间
 *
 *  @param QQAppId   QQAppId
 *  @param appSecret appSecret
 *  @param url       QQ和QQ空间消息url地址
 */
+(void)umengSetQQAppId:(NSString *)qqAppId appSecret:(NSString *)appSecret url:(NSString *)url;


///**
// *  集成腾讯微博
// *
// *  @param url 腾讯微博回调地址
// */
//+(void)umengSetTencentWeiBo:(NSString *)url;
//
//
//
//
///*
// *  集成人人网
// */
//+(void)umengSetRenRenWang;




/*
 *  集成SSO回调
 */
+(BOOL)umengHandleOpenURL:(NSURL *)url;



@end
