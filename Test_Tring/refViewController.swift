
import UIKit

class refViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource{

    @IBOutlet weak var TableViewRef: UITableView!
    var Val = [String]()

    let ref = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()

        TableViewRef.delegate = self
        TableViewRef.dataSource = self
        
        ref.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        ref.addTarget(self, action: #selector(getData), for: .valueChanged)
        TableViewRef.addSubview(ref)
        
    }
    
    @objc func getData(){
        Val.append("\(Val.count + 1)")
        ref.endRefreshing()
        TableViewRef.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Val.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "valref", for: indexPath)
        cell.textLabel?.text = Val[indexPath.row]
        return cell
    }

    

}
