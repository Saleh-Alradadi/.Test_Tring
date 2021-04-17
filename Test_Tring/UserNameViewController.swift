//
//  UserNameViewController.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 15/04/2021.
//

import UIKit

class UserNameViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var TableName: UITableView!
    @IBOutlet weak var txtName: UITextField!
    var userName = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        TableName.delegate = self
        TableName.dataSource = self
    }
    

    @IBAction func btnEdit(_ sender: Any) {
        TableName.isEditing = !TableName.isEditing
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        if let text = txtName.text {
            userName.append(text)
            let indexPath = IndexPath(row: userName.count - 1, section: 0)
            TableName.beginUpdates()
            TableName.insertRows(at: [indexPath], with: .automatic)
            TableName.endUpdates()
            txtName.text = ""
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellOfName", for: indexPath)
        cell.textLabel?.text = userName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        userName.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "delete") { (action, view, context) in
            self.userName.remove(at: indexPath.row)
            self.TableName.beginUpdates()
            self.TableName.deleteRows(at: [indexPath], with: .automatic)
            self.TableName.endUpdates()
            context(true)
        }
            let fav = UIContextualAction(style: .normal, title: "fav") { (_, _, _) in
                print("Done")
            
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction ,fav])
    }
    
}
