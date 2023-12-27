//
//  BrownViewController.swift
//  MyUIKit
//
//  Created by 김동준 on 12/27/23
//  Copyright © 2023 QCells. All rights reserved.
//

import UIKit

class BrownViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goNext") {
            let viewController = segue.destination as! PurpleViewController
            viewController.inputName = "히히"
        }
    }
}
