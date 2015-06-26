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
    
    [CoreUmengShare show:self text:@"我是友盟分享文字" image:[UIImage imageNamed:@"show"]];

}





@end
