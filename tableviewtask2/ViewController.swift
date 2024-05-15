
import Foundation
import UIKit

class ViewController: UIViewController{
   
   //outlet
    @IBOutlet weak var txtone: UITextField!
    @IBOutlet weak var lbltwo: UILabel!
    @IBOutlet weak var tableview: UITableView!
   
    //variable declaration
    var array = [String]() 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
       self.navigationItem.title = "UserList"
        if let data = UserDefaults.standard.object(forKey: "toarray") as? [String]{
            
          array = data
          txtone.text = "\(array.count)"
            
        } else {
           lbltwo.text = "no text here"
        }
    }
   //Button action
@IBAction func addbutton(_ sender: Any) {
        if txtone.text !=  nil{
            array.append(txtone.text!)
            UserDefaults.standard.set(array, forKey: "toarray")
            tableview.reloadData()
            lbltwo.text = "No User Found"
            
            
            if (txtone.text == ""){       
            //
            var dialogMessage = UIAlertController(title: "Confirm", message: "please enetr user detail", preferredStyle: .alert)
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
            })
            // Create Cancel button with action handlder
            let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
                print("Cancel button tapped")
            }
            //Add OK and Cancel button to an Alert object
            
            dialogMessage.addAction(ok)
            dialogMessage.addAction(cancel)
               
            // Present alert message to user
            self.present(dialogMessage, animated: true, completion: nil)
                
            }
            
      }else{
            lbltwo.text = "please enter text"
        }
   }
}
extension ViewController :UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if (indexPath.row % 2 == 0){
            
            cell.textLabel?.text =  array[indexPath.row]
            cell.textLabel?.textAlignment = .left
            cell.textLabel?.numberOfLines = 0
            cell.textLabel?.backgroundColor = .gray
            //cell.textLabel?.minimumScaleFactor = 0.1
            cell.textLabel?.sizeToFit()
            cell.textLabel?.adjustsFontSizeToFitWidth = true
            
        }  else{
               
            cell.textLabel?.text =  array[indexPath.row]
            cell.textLabel?.textAlignment = .right
            cell.textLabel?.backgroundColor = .darkGray
            }
        return cell
       
    }
   
}

/*****  Extra Coding *****/
// if tableview.isEditing {
//return
//}
//let name:String = "item \(data.count + 1)"
//data.insert(name, at: 0)
//let indexpath:IndexPath = IndexPath(row: 1, section: 1)
//tableview.insertRows(at: [indexpath], with: .automatic)
//// load()
//save()
    
//}
//func save(){
//    UserDefaults.standard.set(data, forKey: "notes")
//
//}
//func load(){
//    if let loaddata:[String] = UserDefaults.standard.value(forKey: "notes") as? [String]{
//        data = loaddata
//        tableview.reloadData()
//    }
//
//
// logic odd even in swift

//}
// right logic
//        if (indexPath.row % 2 == 0){
//            cell.lbl.text = self.array[indexPath.row]
//            cell.lbl.textAlignment = .left
//            cell.lbl.numberOfLines = 0
//            cell.lbl.sizeToFit()
//        }else{
//            cell.lbl.text = self.array[indexPath.row]
//            cell.lbl.textAlignment = .right
//            cell.lbl.numberOfLines = 0
//            cell.lbl.sizeToFit()
//
