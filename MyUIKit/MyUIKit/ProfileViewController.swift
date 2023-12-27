//
//  ProfileViewController.swift
//  MyUIKit
//
//  Created by 김동준 on 12/27/23
//  Copyright © 2023 QCells. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileTableView: UITableView!
    
    var profileData = [
        "아이디",
        "전화번호",
        "이름"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileTableView.dataSource = self
        profileTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "profileSegue") {
            let viewController = segue.destination as? DetailViewController
            
            viewController?.titles = profileData[0]
        }
    }
}

extension ProfileViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = profileTableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath)
        
        cell.textLabel?.text = profileData[indexPath.row]
        
        return cell
    }
}
