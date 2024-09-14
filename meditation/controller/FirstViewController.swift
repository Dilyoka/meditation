

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var firstTable: UITableView!
    
    // var types : Category!
    
    //var listCateg : [category] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initlist()
        
    }
    
    func initlist () {
        
//        let sleep = category(name: "Sleep",
//                            img_categ: "num1",
//                            txt_categ: "Meditation has a positive effect on the process of cognition, the ability to see the situation from a different point of view, control of emotions, and the ability to empathize." )
//        let relax = category(name: "Relax",
//                            img_categ: "num2",
//                            txt_categ: "Meditation has a positive effect on the process of cognition, the ability to see the situation from a different point of view, control of emotions, and the ability to empathize." )
//        let reflection = category(name: "Reflection",
//                            img_categ: "num3",
//                            txt_categ: "Meditation has a positive effect on the process of cognition, the ability to see the situation from a different point of view, control of emotions, and the ability to empathize." )
//        // let listCateg : [category] = [sleep, relax, reflection]
//        listCateg.append(sleep)
//        listCateg.append(relax)
//        listCateg.append(reflection)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCateg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "id_cell") as! FirstTableViewCell
        
        let categ = listCateg[indexPath.row]
        
        tableViewCell.first_txt1.text = categ.name
        tableViewCell.first_txt2.text = categ.txt_categ
        tableViewCell.first_img.image = UIImage(named: categ.img_categ)
        
        tableViewCell.first_img.layer.cornerRadius = 20
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        self.performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any? ){
        
        if(segue.identifier == "segue") {
             let indexPath = self.firstTable.indexPathForSelectedRow!
             let tableViewDeteil = segue.destination as! SecondViewController
            
             tableViewDeteil.category = listCateg[indexPath.row]
            
            // print(123)
            print(listCateg[indexPath.row].name)
            self.firstTable.deselectRow(at: indexPath, animated: false )
            
        }
    }
}





