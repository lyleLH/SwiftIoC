//
//  HomeApiService.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

class HomeApiService: NSObject,HomeApiServiceProtocol{
    func getHomeData(result:((String , String)->())){
        result("www.yeahka.com","merchantdetails")
    }
    
    func getMerchantName(result:((String )->())){
        result("金牌代理商")
    }
}
