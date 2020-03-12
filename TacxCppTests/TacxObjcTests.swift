//
//  TacxObjcTests.swift
//  TacxCppTests
//
//  Created by Adam Lovastyik on 12/03/2020.
//  Copyright © 2020 Lovastyik. All rights reserved.
//

import XCTest

class TacxObjcTests: XCTestCase {

    let factorial = FactorialObjc()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFactorialObjC() {
        
        
        let fact3 = factorial.factorial(3)
        XCTAssertEqual(fact3, 6)
    }

    func testPerformanceFactorialObjc1000() {
        
        self.measure {
            
            let _ = factorial.factorial(1000)
        }
    }

}
