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
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.3, alpha: 1.0)
        viewModel.speakMyName()
    }
    
}
