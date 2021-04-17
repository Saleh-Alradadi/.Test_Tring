//
//  contaxtNameViewController.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 16/04/2021.
//

import UIKit

class contaxtNameViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var TableCon: UITableView!
    
    var numOFsection = ["A" , "B" , "S"]
    var numOFrow = [["Ahmad","Ali","Ammar"] , ["Bader" , "Bassim"] , ["Saleh" , "Salem" , "Slaah", "Saad","Samer"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableCon.delegate = self
        TableCon.dataSource = self

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return numOFsection.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return numOFsection[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOFrow[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameOfRow", for: indexPath)
        cell.textLabel?.text = numOFrow[indexPath.section][indexPath.row]
        return cell
    }
    
    
}
