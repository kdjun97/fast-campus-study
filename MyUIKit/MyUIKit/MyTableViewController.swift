//
//  MyTableViewController.swift
//  MyUIKit
//
//  Created by 김동준 on 12/25/23
//  Copyright © 2023 QCells. All rights reserved.
//

import UIKit

// TableView는 재사용해서 그려짐
class MyTableViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    let cellData = ["Hello TableView", "This is UIKit", "Welcome"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        myTableView.backgroundColor = .green
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
