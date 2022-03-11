//
//  ApiServiceFactory.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

class ApiServiceFactory:NSObject {
    class func getHomeApiService() -> HomeApiServiceProtocol {
        return HomeApiService()
    }
}
