//
//  ViewController.m
//  CoreUmeng
//
//  Created by 冯成林 on 15/6/26.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CoreUMeng.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)share:(id)sender {
    
//    [CoreUmengShare show:self text:@"我的青春我作主" image:[UIImage imageNamed:@"share"]];
    NSString *platForm = UMShareToWhatsapp;

    
    //进入授权页面
//    [UMSocialSnsPlatformManager getSocialPlatformWithName:platForm].loginClickHandler(self,[UMSocialControllerService defaultControllerService],YES,^(UMSocialResponseEntity *response){
//        if (response.responseCode == UMSResponseCodeSuccess) {
//            //获取微博用户名、uid、token等
//            UMSocialAccountEntity *snsAccount = [[UMSocialAccountManager socialAccountDictionary] valueForKey:platForm];
//            NSLog(@"username is %@, uid is %@, token is %@",snsAccount.userName,snsAccount.usid,snsAccount.accessToken);
//            //进入你的分享内容编辑页面
//        }
//    });
//        NSLog(@"已经授权");
        UMSocialAccountEntity *weiboAccount = [[UMSocialAccountEntity alloc] initWithPlatformName:UMShareToSina];
//        weiboAccount.usid = @"your usid";
//        weiboAccount.accessToken = @"your accesstoken";
        //    weiboAccount.openId = @"tencent weibo openId";          //腾讯微博账户必需设置openId
        //同步用户信息
    [[UMSocialDataService defaultDataService]  postSNSWithTypes:@[platForm] content:@"我的青春我作主" image:[UIImage imageNamed:@"share"] location:nil urlResource:nil presentedController:self completion:^(UMSocialResponseEntity *shareResponse){
        if (shareResponse.responseCode == UMSResponseCodeSuccess) {
            NSLog(@"分享成功！");
        }
    }];

}





@end
