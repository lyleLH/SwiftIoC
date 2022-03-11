//
//  BusinessViewModel.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

class BusinessViewModel : NSObject {
    private var dataService:DataSeviceInterface
    
    init(service:DataSeviceInterface) {
        dataService = service
        super.init()
    }
    
    func updateMerchantTitleViewData(merchantID:String) -> String{
        return dataService.getMerchantNameWithID(merchantID)
    }
    
    
}


