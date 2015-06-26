//
//  AppDelegate.swift
//  FxxkWeibo
//
//  Created by Victor Ji on 15/6/25.
//  Copyright © 2015年 Victor. All rights reserved.
//

import UIKit

var accessToken : String = ""

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, WeiboSDKDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        WeiboSDK.enableDebugMode(true)
        let success = WeiboSDK.registerApp("823606739")
        print("success is \(success)")
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //MARK: openUrl
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        return WeiboSDK.handleOpenURL(url, delegate: self)
    }
    
    func application(application: UIApplication, handleOpenURL url: NSURL) -> Bool {
        return WeiboSDK.handleOpenURL(url, delegate: self)
    }
    
    //MARK: WeiboSDK delegate
    func didReceiveWeiboRequest(request: WBBaseRequest!) {
        if request is WBProvideMessageForWeiboRequest {
            print("aaaaa")
        } else if request is WBAuthorizeRequest {
            print("bbbbb")
        }
    }
    
    func didReceiveWeiboResponse(response: WBBaseResponse!) {
        if response is WBProvideMessageForWeiboResponse {
            let message = "响应状态:\(response.statusCode.rawValue)<>响应UserInfo数据:\(response.userInfo)<>原请求UserInfo数据:\(response.requestUserInfo)"
            let alert = UIAlertView(title: "发送结果", message: message, delegate: nil, cancelButtonTitle: "确定")
            alert.show()
        } else if response is WBAuthorizeResponse {
//            let res = response as? WBAuthorizeResponse
            let message = "响应状态: \(response.statusCode.rawValue)<>response.userId: \((response as? WBAuthorizeResponse)!.userID)<>response.accessToken: \((response as? WBAuthorizeResponse)!.accessToken)<>响应UserInfo数据: \(response.userInfo)<>原请求UserInfo数据: \(response.requestUserInfo)"
            
            accessToken = (response as? WBAuthorizeResponse)!.accessToken
            
            let alert = UIAlertView(title: "认证结果", message: message, delegate: nil, cancelButtonTitle: "确定")
            alert.show()
        }
    }

}

