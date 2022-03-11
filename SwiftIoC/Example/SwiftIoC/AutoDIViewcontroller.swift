//
//  AutoDIViewcontroller.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class AutoDIViewcontroller:BaseViewController {
    
    
//    init(){
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }
//

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.3, alpha: 1.0)
        print("\(viewModel.userName)")
    }
}
