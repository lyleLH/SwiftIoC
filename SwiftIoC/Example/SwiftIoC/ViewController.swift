//
//  ViewController.swift
//  SwiftIoC
//
//  Created by Major Tom on 03/11/2022.
//  Copyright (c) 2022 Major Tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewModel:ViewModel!
    
    var homeViewModel: HomeViewModel!
    
    var bussinessViewModel :BusinessViewModel!
    var bussinessViewModel1 :BusinessViewModel1!
    var bussinessViewModel2 :BusinessViewModel2!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel = ViewModel()
        
//        viewModel = VmFactory().getObjecOfViewModel()
//
//        viewModel.getHomeData { host, api in
//            print("host: \(host) -- api: \(api)")
//        }
        
        
//        homeViewModel = HomeViewModel()
//        homeViewModel.updateHomeTitle { _ in
//            print("--")
//        }
//        homeViewModel.getHomeData { _, _ in
//            print("--")
//        }
        
//        bussinessViewModel = BusinessViewModel.init(service: NetworkDataSevice())
        
        
        bussinessViewModel = BusinessViewModel.init(service: LocalDataService())
        print(bussinessViewModel.updateMerchantTitleViewData(merchantID: "1234"))
        
        bussinessViewModel1 = BusinessViewModel1.init()
        bussinessViewModel1.dataService = NetworkDataSevice1()
        print(bussinessViewModel1.updateMerchantTitleViewData(merchantID: "1234"))
        
        bussinessViewModel2 = BusinessViewModel2.init()
        bussinessViewModel2 .setDataDependency(denpendency: LocalDataService2())
        print(bussinessViewModel2.updateMerchantTitleViewData(merchantID: "1234"))

    }

}

