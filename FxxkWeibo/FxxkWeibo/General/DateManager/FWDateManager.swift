//
//  FWDateManager.swift
//  FxxkWeibo
//
//  Created by Victor Ji on 15/6/29.
//  Copyright © 2015年 Victor. All rights reserved.
//

//import Cocoa

public class FWDateManager : NSObject {
    
    var serverDateFormatter : NSDateFormatter?
    
    static let manager = FWDateManager()
    
    override init() {
//        setupDateFormatter()
        serverDateFormatter = NSDateFormatter()
        let serverDateFormatString = "EEE MMM dd HH:mm:ss Z yyyy"
        serverDateFormatter!.dateFormat = serverDateFormatString
        let serverLocale = NSLocale(localeIdentifier: "en_US")
        serverDateFormatter!.locale = serverLocale
    }
    
//    func setupDateFormatter() {
//        // setup server date format
//        serverDateFormatter = NSDateFormatter()
//        let serverDateFormatString = "EEE MMM dd HH:mm:ss Z yyyy"
//        serverDateFormatter!.dateFormat = serverDateFormatString
//        let serverLocale = NSLocale(localeIdentifier: "en_US")
//        serverDateFormatter!.locale = serverLocale
//    }
}
