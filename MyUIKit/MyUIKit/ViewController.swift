//
//  ViewController.swift
//  MyUIKit
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad() // 뷰 다 그리고 나서
        view.backgroundColor = .green // 색깔 바꿔줘 -> storyboard에서 적용된 컬러에서 바뀜
        // Do any additional setup after loading the view.
    }

    @IBAction func didMyButtonTapped(_ sender: Any) {
        myLabel.text = "Hello Dongjun"
    }
    
}

