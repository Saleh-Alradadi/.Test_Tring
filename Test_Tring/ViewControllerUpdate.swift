//
//  ViewControllerUpdate.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 15/04/2021.
//

import UIKit

class ViewControllerUpdate: UIViewController ,UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var TableViewUpd: UITableView!
    @IBOutlet weak var TextAdd: UITextField!
    
    var NamesUser = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TableViewUpd.delegate = self
        TableViewUpd.dataSource = self
        
    }
    
    
    @IBAction func Updateing(_ sender: Any) {
        TableViewUpd.isEditing = !TableViewUpd.isEditing
    }
    
    
    @IBAction func AddIng(_ sender: Any) {
        if let text = TextAdd.text {
            NamesUser.append(text)
            let indexPath = IndexPath(row: NamesUser.count - 1, section: 0)
            TableViewUpd.beginUpdates()
            TableViewUpd.insertRows(at: [indexPath], with: .automatic)
            TableViewUpd.endUpdates()
            TextAdd.text = ""
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NamesUser.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellUPD", for: indexPath)
        cell.textLabel?.text = NamesUser[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        NamesUser.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, compl) in
            self.NamesUser.remove(at: indexPath.row)
            self.TableViewUpd.beginUpdates()
            self.TableViewUpd.deleteRows(at: [indexPath], with: .automatic)
            self.TableViewUpd.endUpdates()
            
            compl(true)
        }
        let Upd = UIContextualAction(style: .normal, title: "fav") { (_, _, _) in
            print("Done")
        }
        return UISwipeActionsConfiguration(actions: [deleteAction , Upd])
    }

    

}
