//
//  CoreUMengLogin.m
//  CoreUmeng
//
//  Created by 冯成林 on 15/9/12.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "CoreUMengLogin.h"


@implementation CoreUMengLogin


+(void)login:(UMengLoginType)loginType vc:(UIViewController *)vc resBlock:(void(^)(UMSocialAccountEntity *snsAccount,UMengLoginType loginType))resBlock{
    
    if(loginType == UMengLoginTypeSina){//新浪
        
        UMSocialSnsPlatform *snsPlatform = [UMSocialSnsPlatformManager getSocialPlatformWithName:UMShareToSina];
        
        snsPlatform.loginClickHandler(vc,[UMSocialControllerService defaultControllerService],YES,^(UMSocialResponseEntity *response){
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
                UMSocialAccountEntity *snsAccount = [[UMSocialAccountManager socialAccountDictionary] valueForKey:UMShareToSina];
                
                if(resBlock != nil) resBlock(snsAccount,loginType);
            }
        });
        
    }else if (loginType == UMengLoginTypeQQ){//QQ
        
        UMSocialSnsPlatform *snsPlatform = [UMSocialSnsPlatformManager getSocialPlatformWithName:UMShareToQQ];
        
        snsPlatform.loginClickHandler(vc,[UMSocialControllerService defaultControllerService],YES,^(UMSocialResponseEntity *response){
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
                UMSocialAccountEntity *snsAccount = [[UMSocialAccountManager socialAccountDictionary] valueForKey:UMShareToQQ];
                
                if(resBlock != nil) resBlock(snsAccount,loginType);
                
            }
        });
        
    }else if (loginType == UMengLoginTypeWeiXin){//微信
        
        UMSocialSnsPlatform *snsPlatform = [UMSocialSnsPlatformManager getSocialPlatformWithName:UMShareToWechatSession];
        
        snsPlatform.loginClickHandler(vc,[UMSocialControllerService defaultControllerService],YES,^(UMSocialResponseEntity *response){
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
                UMSocialAccountEntity *snsAccount = [[UMSocialAccountManager socialAccountDictionary]valueForKey:UMShareToWechatSession];
                
                if(resBlock != nil) resBlock(snsAccount,loginType);
                
            }
            
        });
    }
    
}










@end
