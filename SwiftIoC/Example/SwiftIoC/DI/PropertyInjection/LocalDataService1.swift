//
//  LocalDataService.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

class LocalDataService1 :NSObject,DataSeviceInterface1 {
    func getMerchantNameWithID(_ ID: String) -> String {
        return "一般屌的商家"
    }
    
    
}
