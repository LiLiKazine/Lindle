//
//  Global.swift
//  Lindle
//
//  Created by LiLi Kazine on 2018/11/10.
//  Copyright © 2018 HNA Group Co.,Ltd. All rights reserved.
//

import Foundation

//MARK: DEBUG Log
func Log<N>(message:N,fileName:String = #file,methodName:String = #function,lineNumber:Int = #line){
    #if DEBUG
    print("-------------\n\(fileName as NSString)\nfunc: \(methodName)\nline: \(lineNumber)\nmessage: \(message) \n-------------");
    #endif
}
