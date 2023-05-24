//
//  CoverVC.swift
//  SwiftInObj
//
//  Created by 김라영 on 2023/05/23.
//

import Foundation
import UIKit

@objc(CoverVC) //objc로 사용

class CoverVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemYellow
        
        print(#fileID, #function, #line, "- viewDidLoad: CoverVC")
    }
}
