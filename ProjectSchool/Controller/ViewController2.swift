//
//  ViewController2.swift
//  ProjectSchool
//
//  Created by wendy manrique on 5/07/22.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    private let myLanguage  = ["Español","Ingles","Frances","Alemania","China","Japones","Coreano",
                               "Italiano",
                               "Portugues",
                               "Holanda",
                               "Irlanda",
                               "Australia",
                               "Austria",
                               "Frances",
                               "Arabe",
                               "Bengali",
                               "Ruso",
                               "Turco",
                               "Tailandes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Data source es un protocolo delegado que se usa en las tableView
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        
    }
    
}
extension ViewController2: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myLanguage.count
        
}
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    var cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
    if cell == nil{
        cell = UITableViewCell(style: .default, reuseIdentifier: "myCell")
        cell?.accessoryType = .disclosureIndicator
        
    }

    cell!.textLabel?.text = myLanguage[indexPath.row]
    return cell!
 }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "nextPage", sender: nil)
       /*let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc3 = storyboard.instantiateViewController(withIdentifier: "nextPage")
        navigationController?.pushViewController(vc3, animated: true)*/
        
    }
}

