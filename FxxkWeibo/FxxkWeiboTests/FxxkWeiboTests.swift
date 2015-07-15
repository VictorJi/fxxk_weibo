//
//  FxxkWeiboTests.swift
//  FxxkWeibo
//
//  Created by Victor Ji on 15/6/29.
//  Copyright © 2015年 Victor. All rights reserved.
//

import XCTest

class FxxkWeiboTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let serverDateFormatter = NSDateFormatter()
        let serverDateFormatString = "EEE MMM dd HH:mm:ss Z yyyy"
        serverDateFormatter.dateFormat = serverDateFormatString
        let serverLocale = NSLocale(localeIdentifier: "en_US")
        serverDateFormatter.locale = serverLocale
        
        let dateString = "Sat Jan 11 11:17:43 +0800 2014"
        let date = serverDateFormatter.dateFromString(dateString)
        print("date is \(date)")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
