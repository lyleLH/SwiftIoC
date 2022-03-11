//
//  ADViewMoel.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation


class ADViewModel:BaseViewModel {
    var userName:String
    init(name:String) {
        userName = name
    }
    
    func speakMyName()  {
        print("my name is \(userName)") 
    }
}
