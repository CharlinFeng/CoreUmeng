//
//  AppDelegate.m
//  CoreUmeng
//
//  Created by 冯成林 on 15/6/26.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "AppDelegate.h"
#import "APPHeader.h"
#import "CoreUMeng.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //设置AppKey
    [CoreUMeng umengSetAppKey:UmengAppKey];
    //集成新浪
    [CoreUMeng umengSetSinaSSOWithRedirectURL:@"http://sns.whalecloud.com/sina2/callback"];
    //集成微信
    [CoreUMeng umengSetWXAppId:WXAPPID appSecret:WXAPPsecret url:WXUrl];
    //集成QQ
    [CoreUMeng umengSetQQAppId:@"100424468" appSecret:@"c7394704798a158208a74ab60104f0ba" url:nil];
    // Override point for customization after application launch.
    return YES;
}



- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return  [CoreUMeng umengHandleOpenURL:url];
}
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    return  [CoreUMeng umengHandleOpenURL:url];
}

@end
