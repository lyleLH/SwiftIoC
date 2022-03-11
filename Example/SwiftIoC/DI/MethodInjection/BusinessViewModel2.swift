//
//  BusinessViewModel.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

protocol DataServiceDependency:NSObject {
    func setDataDependency(denpendency:DataSeviceInterface2)
}

class BusinessViewModel2 : NSObject,DataServiceDependency {
   private var dataService:DataSeviceInterface2?

    override init() {
        super.init()
    }
    
    func updateMerchantTitleViewData(merchantID:String) -> String{
        return dataService?.getMerchantNameWithID(merchantID) ?? ""
    }
    
    func setDataDependency(denpendency: DataSeviceInterface2) {
        dataService = denpendency
    }
}


