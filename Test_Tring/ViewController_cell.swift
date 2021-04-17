//
//  ViewController_cell.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 11/04/2021.
//

import UIKit

class ViewController_cell: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var tableViewName: UITableView!
    var names = ["Saleh" , "Muhannad" , "Abdullah" , "Faisal"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewName.delegate = self
        tableViewName.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellName = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
        cellName.textLabel?.text = names[indexPath.row]
    return cellName
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(names[indexPath.row])
    }
    

    

}
