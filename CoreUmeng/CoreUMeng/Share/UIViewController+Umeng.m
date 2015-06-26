//
//  UIViewController+Umeng.m
//  CoreUmeng
//
//  Created by 冯成林 on 15/6/26.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "UIViewController+Umeng.h"
#import "CoreSVP.h"

@implementation UIViewController (Umeng)

/*
 *  代理方法区
 */


/**
 自定义关闭授权页面事件
 
 @param navigationCtroller 关闭当前页面的navigationCtroller对象
 
 */
-(BOOL)closeOauthWebViewController:(UINavigationController *)navigationCtroller socialControllerService:(UMSocialControllerService *)socialControllerService{
    NSLog(@"自定义关闭授权页面事件");
    return YES;
}

/**
 关闭当前页面之后
 
 @param fromViewControllerType 关闭的页面类型
 
 */
-(void)didCloseUIViewController:(UMSViewControllerType)fromViewControllerType{
    NSLog(@"关闭当前页面之后");
}

/**
 各个页面执行授权完成、分享完成、或者评论完成时的回调函数
 
 @param response 返回`UMSocialResponseEntity`对象，`UMSocialResponseEntity`里面的viewControllerType属性可以获得页面类型
 */
-(void)didFinishGetUMSocialDataInViewController:(UMSocialResponseEntity *)response{

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.8f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self handleResponse:response];
    });
}


-(void)handleResponse:(UMSocialResponseEntity *)response{
    
    if(UMSResponseCodeSuccess ==response.responseCode){
        [CoreSVP showSVPWithType:CoreSVPTypeSuccess Msg:@"分享成功" duration:2.0f allowEdit:NO beginBlock:nil completeBlock:nil];
    }else{
        
        NSString *res = response.message;
        if(res==nil || res.length==0) res= @"分享失败";
        if(UMSResponseCodeCancel == response.responseCode) res = @"您取消了分享";
        
        [CoreSVP showSVPWithType:CoreSVPTypeInfo Msg:res duration:2.0f allowEdit:NO beginBlock:nil completeBlock:nil];
    }
}



/**
 点击分享列表页面，之后的回调方法，你可以通过判断不同的分享平台，来设置分享内容。
 例如：
 
 -(void)didSelectSocialPlatform:(NSString *)platformName withSocialData:(UMSocialData *)socialData
 {
 if (platformName == UMShareToSina) {
 socialData.shareText = @"分享到新浪微博的文字内容";
 }
 else{
 socialData.shareText = @"分享到其他平台的文字内容";
 }
 }
 
 @param platformName 点击分享平台
 
 @prarm socialData   分享内容
 */
-(void)didSelectSocialPlatform:(NSString *)platformName withSocialData:(UMSocialData *)socialData{
    NSLog(@"点击分享列表页面，之后的回调方法，你可以通过判断不同的分享平台，来设置分享内容");
}


/**
 配置点击分享列表后是否弹出分享内容编辑页面，再弹出分享，默认需要弹出分享编辑页面
 
 @result 设置是否需要弹出分享内容编辑页面，默认需要
 
 */
-(BOOL)isDirectShareInIconActionSheet{
    NSLog(@"配置点击分享列表后是否弹出分享内容编辑页面，再弹出分享，默认需要弹出分享编辑页面");
    return NO;
}



@end
