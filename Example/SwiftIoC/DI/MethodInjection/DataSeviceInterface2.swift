//
//  DataSeviceInterface.swif.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

protocol DataSeviceInterface2 : NSObject {
    func getMerchantNameWithID(_ ID:String) ->String
}
