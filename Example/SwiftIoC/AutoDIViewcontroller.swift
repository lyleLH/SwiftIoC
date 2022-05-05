//
//  AutoDIViewcontroller.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class AutoDIViewcontroller:BaseViewController<ADViewModel> {
    
    private var button:UIButton! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.3, alpha: 1.0)
//        viewModel.speakMyName()


        viewModel.function1()
        
        if #available(iOS 14.0, *) {
            button = UIButton(frame: CGRect.init(x: 100, y: 100, width: 100, height: 44), primaryAction: UIAction.init(handler: { _ in

                self.present(UINavigationController.init(rootViewController: HomeListViewController.init(vm: HomeListViewModel())), animated: true) {

                }
            }))
        } else {
            // Fallback on earlier versions
        }
        button.setTitle("Push", for: UIControl.State.normal)
        button.backgroundColor = .white
        view.addSubview(button)


    }
    
}
