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

}

