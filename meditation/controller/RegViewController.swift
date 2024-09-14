

import UIKit

class RegViewController: UIViewController {

    
    @IBOutlet weak var log: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    
    let num = "1234567890"
    let sim = "!@#$%^&*()_"
    var isNum = false
    var isSim = false

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signUp(_ sender: Any) {
        let l = log.text!
        let p = pass.text!
        
        if l.isEmpty || p.isEmpty{
            let alert = UIAlertController(title:"Attention", message:"The input field must not be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Ok", style: .default))
            present(alert, animated: false, completion: nil)
        }
        else {
            for i in p {
                for j in num {
                    if i == j {
                        isNum = true
                    }
                }
                for s in sim {
                    if i == s {
                        isSim = true
                    }
                }
            }
        }
        if isNum != true {
            if l.count - 1 < 7 && p.count - 1 < 7 {
                let alert = UIAlertController(title: "Attention", message: "Login and password length must be more than 7 characters", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default))
                present(alert, animated: false, completion: nil)
            }
            let alert = UIAlertController(title: "Attention", message: "Login and password must contein numbers ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alert, animated: false, completion: nil)
        }
        else if isSim != true {
            let alert = UIAlertController(title: "Attention", message: "Login and password must contein simbols", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alert, animated: false, completion: nil)
        }
        else {
            user.login = l
            user.password = p
            
            if let newViewController = storyboard?.instantiateViewController(withIdentifier: "authViewController") as? AuthViewController {
                newViewController.modalPresentationStyle = .fullScreen
                present(newViewController, animated: false, completion: nil)
            }
        }
        
        
        
        
        
        
        
        
    }

}
