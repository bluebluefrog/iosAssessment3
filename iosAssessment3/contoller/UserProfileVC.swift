
import UIKit

class UserProfileVC:  UIViewController {
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var hightLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var targetLabel: UILabel!
    
    @IBOutlet weak var genderLabel: UILabel!
    
    override func viewDidLoad() {
        
        let weight=UserDefaults.standard.value(forKey: "weight")
        let height=UserDefaults.standard.value(forKey: "height")
        let age=UserDefaults.standard.value(forKey: "age")
        let target=UserDefaults.standard.value(forKey: "target")
        let gender=UserDefaults.standard.value(forKey: "gender")
        
        if(weight==nil||height==nil||age==nil||target==nil||gender==nil){
            let vc = storyboard?.instantiateViewController(identifier: "UserDataEditVC") as! UserDataEditVC
            self.navigationController?.pushViewController(vc, animated: true)
            vc.navigationItem.setHidesBackButton(true, animated: true)
        }
        else{
          weightLabel.text = String(weight as! Int)
          hightLabel.text = String(height as! Int)
          ageLabel.text = String(age as! Int)
          targetLabel.text = String(target as! Int)
          genderLabel.text = gender as! String
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="goUserDataEdit"){
            let userEditVC=segue.destination as! UserDataEditVC
            userEditVC.navigationItem.setHidesBackButton(true, animated: true)
        }
        if(segue.identifier=="goHome"){
            let homeVC=segue.destination as! HomeVC
            homeVC.navigationItem.setHidesBackButton(true, animated: true)
        }
    }
}
