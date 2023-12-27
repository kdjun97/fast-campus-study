//
//  PurpleViewController.swift
//  MyUIKit
//
//  Created by 김동준 on 12/27/23
//  Copyright © 2023 QCells. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var inputName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = inputName
    }
    
    
}
