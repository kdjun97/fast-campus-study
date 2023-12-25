//
//  TodoViewController.swift
//  MyUIKit
//
//  Created by 김동준 on 12/25/23
//  Copyright © 2023 QCells. All rights reserved.
//

import UIKit

struct TodoItem {
    let title: String
    var isCompleted: Bool
}

class TodoViewController: UIViewController {
    @IBOutlet weak var todoTableView: UITableView!
    
    var data: [TodoItem] = [
        TodoItem(
            title: "커밋하기",
            isCompleted: false
        ),
        TodoItem(
            title: "운동하기",
            isCompleted: true
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoTableView.dataSource = self
        todoTableView.delegate = self
    }
}

extension TodoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoTableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row].title
        if (data[indexPath.row].isCompleted) {
            cell.textLabel?.textColor = .green
            cell.imageView?.backgroundColor = .clear
        } else {
            cell.textLabel?.textColor = .red
            cell.imageView?.backgroundColor = .red
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let myAction = UIContextualAction(
            style: .normal,
            title: "완료") { action, view, completionHandler in
                self.data[indexPath.row].isCompleted.toggle()
                completionHandler(self.data[indexPath.row].isCompleted)
                self.todoTableView.reloadData()
            }
        
        return UISwipeActionsConfiguration(actions: [myAction])
    }
}
