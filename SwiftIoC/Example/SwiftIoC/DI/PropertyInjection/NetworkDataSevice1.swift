//
//  NetworkDataSevice.swift.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation



class NetworkDataSevice1 : NSObject, DataSeviceInterface1{
    func getMerchantNameWithID(_ ID: String) -> String {
        return "超屌商家"
    }
}
