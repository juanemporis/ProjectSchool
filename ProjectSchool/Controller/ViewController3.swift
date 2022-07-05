//
//  ViewController3.swift
//  ProjectSchool
//
//  Created by wendy manrique on 5/07/22.
//

import UIKit

class ViewController3: UIViewController {
    
    
    @IBOutlet weak var tableView3: UITableView!
    @IBOutlet weak var setGoalView: UIButton!
    
    private let myGoal = ["Casual","Regular","Serious","Insane"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView3.dataSource = self
        tableView3.tableFooterView = UIView()

        
    }
    
}

extension ViewController3: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGoal.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView3.dequeueReusableCell(withIdentifier: "myCell2")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "myCell2")
            cell?.accessoryType = .detailButton
        }
        cell!.textLabel?.text = myGoal[indexPath.row]
        return cell!
    }
}
