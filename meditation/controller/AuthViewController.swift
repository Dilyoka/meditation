

import UIKit

class AuthViewController: UIViewController {

    @IBOutlet weak var log: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func signIn(_ sender: Any) {
        let l = log.text!
        let p = pass.text!
        
        if l.isEmpty || p.isEmpty {
            let alert = UIAlertController(title:"Attention",message:"The input field must not be empty",preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Ok",style: .default))
            present(alert, animated: false, completion: nil)
        }
        else {
            if l == user.login && p == user.password{
                if let newViewController = storyboard? .instantiateViewController(withIdentifier: "first") as? FirstViewController{
                    newViewController.modalPresentationStyle = .fullScreen
                    present(newViewController, animated: false, completion: nil)
                }
            }
            else {
                let alert = UIAlertController(title: "Attention", message:"Login or password is not correct", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default))
                present(alert, animated: false, completion: nil)
            }
        }
    }

    
}
