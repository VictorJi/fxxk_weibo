//
//  ViewController.swift
//  FxxkWeibo
//
//  Created by Victor Ji on 15/6/25.
//  Copyright © 2015年 Victor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClickAction(sender: AnyObject) {
        let request : WBAuthorizeRequest = (WBAuthorizeRequest.request() as? WBAuthorizeRequest)!
        request.redirectURI = "https://api.weibo.com/oauth2/default.html"
        request.scope = "all"
        WeiboSDK.sendRequest(request)
    }

    @IBAction func getPublicButtonClickAction(sender: AnyObject) {
        let manager = AFHTTPRequestOperationManager()
        manager.requestSerializer = AFJSONRequestSerializer()
        let params = ["access_token" : accessToken, "count" : 3]
        
        manager.GET("https://api.weibo.com/2/statuses/public_timeline.json", parameters: params, success: { (operation : AFHTTPRequestOperation!, responseObject : AnyObject!) -> Void in
                print("response is \(responseObject)")
            }) { (operation : AFHTTPRequestOperation!, error : NSError!) -> Void in
                print("error is \(error)")
        }
        
    }
    
    @IBAction func sendButtonClickAction(sender: AnyObject) {
        let manager = AFHTTPRequestOperationManager()
        let params = ["access_token" : accessToken, "status" : "test"]
        
        manager.POST("https://upload.api.weibo.com/2/statuses/upload.json", parameters: params, constructingBodyWithBlock: { (formData : AFMultipartFormData!) -> Void in
            let image : UIImage = UIImage(named: "bb-image")!
            let imageData = UIImagePNGRepresentation(image)
            formData.appendPartWithFileData(imageData, name: "pic", fileName: "selected", mimeType: "image/png")
            }, success: { (operation : AFHTTPRequestOperation!, responseObject : AnyObject!) -> Void in
                print("response is \(responseObject)")
            }) { (operation : AFHTTPRequestOperation!, error : NSError!) -> Void in
                print("error is \(error)")
        }
    }
    
    @IBAction func sendTextButtonClickAction(sender: AnyObject) {
        let manager = AFHTTPRequestOperationManager()
        let params = ["access_token" : accessToken, "status" : "test only text"]
        
        manager.POST("https://api.weibo.com/2/statuses/update.json", parameters: params, success: { (operation : AFHTTPRequestOperation!, responseObject : AnyObject!) -> Void in
                print("response is \(responseObject)")
            }) { (operation : AFHTTPRequestOperation!, error : NSError!) -> Void in
                print("error is \(error)")
        }
    }
}

