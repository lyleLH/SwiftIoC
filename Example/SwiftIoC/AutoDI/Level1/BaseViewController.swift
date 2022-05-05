//
//  BaseViewController.swift
//  SwiftIoC_Example
//
//  Created by imacN24 on 2022/3/11.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController<Element:BaseViewModelProtocol>: UIViewController {
    public var viewModel:Element!
    

    init(vm: Element){
        super.init(nibName: nil, bundle: nil)
        viewModel = vm
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
