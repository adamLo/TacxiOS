//
//  TacxCppTests.swift
//  TacxCppTests
//
//  Created by Adam Lovastyik on 12/03/2020.
//  Copyright © 2020 Lovastyik. All rights reserved.
//

import XCTest
@testable import TacxCpp

class TacxCppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFactorialCpp() {
        
        let n: Int32 = 3
        let fact3 = factorial(n)
        XCTAssertEqual(fact3, 6)
    }

    func testPerformanceFactorialCpp1000() {
        
        self.measure {
            let _ = factorial(1000)
        }
    }

}
