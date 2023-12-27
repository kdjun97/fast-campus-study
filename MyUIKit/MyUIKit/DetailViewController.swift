//
//  DetailViewController.swift
//  MyUIKit
//
//  Created by 김동준 on 12/27/23
//  Copyright © 2023 QCells. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailLabel: UILabel!
    
    var titles: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = titles
    }
}
