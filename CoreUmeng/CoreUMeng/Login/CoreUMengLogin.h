//
//  CoreUMengLogin.h
//  CoreUmeng
//
//  Created by 冯成林 on 15/9/12.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UMSocial.h"

typedef enum {
    
    UMengLoginTypeSina,
    UMengLoginTypeQQ,
    UMengLoginTypeWeiXin
    
}UMengLoginType;



@interface CoreUMengLogin : NSObject


+(void)login:(UMengLoginType)loginType vc:(UIViewController *)vc resBlock:(void(^)(UMSocialAccountEntity *snsAccount,UMengLoginType loginType))resBlock;




@end
