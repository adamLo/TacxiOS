//
//  JSFactorial.swift
//  TacxCpp
//
//  Created by Adam Lovastyik on 12/03/2020.
//  Copyright © 2020 Lovastyik. All rights reserved.
//

import Foundation
import JavaScriptCore

class JSFactorial {
    
    private let jsContext: JSContext
    private let script: String
    
    init?() {
        
        guard let jsSourcePath = Bundle.main.path(forResource: "Factorial", ofType: "js") else {return nil}
        do {
            // Load its contents to a String variable.
            self.script = try String(contentsOfFile: jsSourcePath)
        }
        catch {
            return nil
        }
        
        jsContext = JSContext()
    }
    
    func calculate(n: Int) -> Int? {
                
        let _ = jsContext.evaluateScript(script)
        guard let number = jsContext.evaluateScript("factorial(\(n))") else {return nil}
        return number.toNumber()?.intValue
    }
}
