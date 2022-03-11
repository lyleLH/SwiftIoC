//
//  HomeBussinessLogic.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

class HomeViewModel:NSObject {
 
    func getHomeData(result:((String , String)->())){
        
        ApiServiceFactory.getHomeApiService().getHomeData { host, api in
            print("get origin data : \(host) \(api)")
            print("do some bussine logic operation")
            print("callback to viewcontroller")
        }
    }
    func updateHomeTitle(name:(( String)->())) {
        ApiServiceFactory.getHomeApiService().getMerchantName { name in
            print("merchant name :\(name)")
        }
    }
}
