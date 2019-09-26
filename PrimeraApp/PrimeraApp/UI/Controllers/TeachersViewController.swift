//
//  TeachersViewController.swift
//  PrimeraApp
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 company. All rights reserved.
//

import UIKit

class TeachersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
}

extension TeachersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func configureTableView (){
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTeachers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TeachersTableViewCell", for: indexPath) as? TeachersTableViewCell else {
            return UITableViewCell()
        }
        
        if(indexPath.row < defaultStudents.count){
            let teacher = defaultTeachers[indexPath.row]
            cell.configureCell(teacher: teacher)
        }
        
        return cell
    }
    
}
