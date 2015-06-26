# CoreUmeng
友盟分享封装

-----
    Charlin出框架的目标：简单、易用、实用、高度封装、绝对解耦！
    
-----

<br /><br />

框架截图 CUT
===============
基本功能演示：<br />
![image](./CoreUmeng/show.png)<br />
<br /><br />

说明 EXPLAIN
===============
本框架封装了友盟诸多细节，目前仅有分享模块，其他模块持续添加中。<br />
成都iOS开发群：<br />
二群：369870753（新开，新鲜着呢，快加） <br />
一群：163865401（已爆满，加不上了）  <br /><br />


<br /><br />
####框架特性：<br />
>1.封装了友盟分享。统一了API，简化了调用api的复杂度。<br />
>2.集成SSO授权。<br />
>3.框架内部处理了所有的分享细节，错误与提示。基本可以一键集成，且集成后你不需要考虑异常。<br />
>4.处理了未安装app的隐藏，不会导致上架被拒。<br />




使用说明 USAGE
===============
#### 1.导入头文件
    #import "CoreUMeng.h"


#### 2.集成功能
    
    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
      
      //设置AppKey
      [CoreUMeng umengSetAppKey:UmengAppKey];
      //集成新浪
      [CoreUMeng umengSetSinaSSOWithRedirectURL:@"http://www.baidu.com"];
      //集成微信
      [CoreUMeng umengSetWXAppId:WXAPPID appSecret:WXAPPsecret url:WXUrl];
      //集成QQ
      [CoreUMeng umengSetQQAppId:@"100424468" appSecret:@"c7394704798a158208a74ab60104f0ba" url:@"http://www.umeng.com/social"];
      // Override point for customization after application launch.
      return YES;
    }

#### 3.SSO授权调
    - (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url{
        return  [CoreUMeng umengHandleOpenURL:url];
    }
    - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
        return  [CoreUMeng umengHandleOpenURL:url];
    }

#### 4.使用
    - (IBAction)share:(id)sender {
    
    [CoreUmengShare show:self text:@"我是友盟分享文字" image:[UIImage imageNamed:@"show"]];
    
    }
    


