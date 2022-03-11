//
//  BusinessViewModel.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

class BusinessViewModel1 : NSObject {
    public var dataService:DataSeviceInterface1?

    override init() {
        super.init()
    }
    
    func updateMerchantTitleViewData(merchantID:String) -> String{
        return dataService?.getMerchantNameWithID(merchantID) ?? ""
    }
    
    
}


