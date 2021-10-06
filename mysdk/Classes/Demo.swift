//
//  Demo.swift
//  mysdk
//
//  Created by taeil on 2021/10/06.
//

import Foundation
import SwiftLog

open class Demo {
    
    static var mInstance: Demo!
    
    public static func instance() -> Demo {
        if mInstance == nil {
            mInstance =  Demo()
        }
        
        return mInstance
    }
    
    public func i (_ msg:String,
                   fileName: String = #file,
                   functionName: String = #function,
                   lineNumber: Int = #line) {
        logw("--[Demo][Info] \(self.getFileName(fileName)) - \(functionName) : \(lineNumber) --- \(msg)")
    }
    
    private func getFileName (_ filePath:String) -> String {
        let f = filePath.split(separator: "/")
        return String(f[f.count - 1])
    }
}
