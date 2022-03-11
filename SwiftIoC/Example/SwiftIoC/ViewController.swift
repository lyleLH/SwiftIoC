//
//  ViewController.swift
//  SwiftIoC
//
//  Created by Major Tom on 03/11/2022.
//  Copyright (c) 2022 Major Tom. All rights reserved.
//

import UIKit
import Swinject
class ViewController: UIViewController {

    var viewModel:ViewModel!
    
    var homeViewModel: HomeViewModel!
    
    var bussinessViewModel :BusinessViewModel!
    var bussinessViewModel1 :BusinessViewModel1!
    var bussinessViewModel2 :BusinessViewModel2!
    
    private var button:UIButton! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.5, green: 0.2, blue: 0.2, alpha: 1.0)
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
        
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let vc = delegate.container.resolve(AutoDIViewcontroller.self)!
   
        
        if #available(iOS 14.0, *) {
            button = UIButton(frame: CGRect.init(x: 100, y: 100, width: 100, height: 44), primaryAction: UIAction.init(handler: { _ in
                self.present(vc, animated: true) {
                    
                }
            }))
        } else {
            // Fallback on earlier versions
        }
        button.setTitle("Push", for: UIControl.State.normal)
        button.backgroundColor = .yellow
        view.addSubview(button)

    }

}

