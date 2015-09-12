//
//  LoginVC.m
//  CoreUmeng
//
//  Created by 冯成林 on 15/9/12.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "LoginVC.h"
#import "CoreUMengLogin.h"

@interface LoginVC ()







@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)sinaBtnClick:(id)sender {

}


- (IBAction)qqLogin:(id)sender {
    

}


- (IBAction)wxLogin:(id)sender {
    
    [CoreUMengLogin login:UMengLoginTypeWeiXin vc:self resBlock:^(UMSocialAccountEntity *snsAccount, UMengLoginType loginType) {
        
        NSLog(@"%@",snsAccount);
    }];
}





@end
