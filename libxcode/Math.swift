//
//  Math.swift
//  libxcode
//
//  Created by Harsha Yarabarla on 02/04/24.
//

import Foundation

@objc
public final class Math: NSObject  {
    @objc
    public override init (){}
    
    @objc
    public func greet() {
        print(">>>>>>>>>> Hello from MyFramework!")
    }
    
    @objc
    public func multiply(a: Float, b: Float) -> Float {
        return a * b
    }
}
