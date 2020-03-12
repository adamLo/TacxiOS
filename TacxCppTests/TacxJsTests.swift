//
//  TacxJsTests.swift
//  TacxCppTests
//
//  Created by Adam Lovastyik on 12/03/2020.
//  Copyright © 2020 Lovastyik. All rights reserved.
//

import XCTest
@testable import TacxCpp

class TacxJsTests: XCTestCase {

    private var jsFactorial: JSFactorial!
    
    override func setUp() {
        
        jsFactorial = JSFactorial()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFactorialJS() {
        
        XCTAssertNotNil(jsFactorial)
        
        let result = jsFactorial.calculate(n: 3)
        XCTAssertEqual(result, 6)
    }

    func testPerformanceExample() {
        
        XCTAssertNotNil(jsFactorial)
        
        self.measure {
            let _ = jsFactorial.calculate(n: 100)
        }
    }

}
