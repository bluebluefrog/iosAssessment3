
import UIKit

class UserProfileVC:  UIViewController {
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var hightLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var targetLabel: UILabel!
    
    @IBOutlet weak var genderLabel: UILabel!
    
    override func viewDidLoad() {
        let weight=UserDefaults.standard.value(forKey: "weight") as! Int
        let height=UserDefaults.standard.value(forKey: "height") as! Int
        let age=UserDefaults.standard.value(forKey: "age") as! Int
        let target=UserDefaults.standard.value(forKey: "target") as! Int
        let gender=UserDefaults.standard.value(forKey: "gender") as! String
        
        if(weight==nil||height==nil||age==nil||target==nil||gender==nil){
            let vc = storyboard?.instantiateViewController(identifier: "UserDataEditVC") as! UserDataEditVC
            self.navigationController?.pushViewController(vc, animated: true)
            vc.navigationItem.setHidesBackButton(true, animated: true)
        }
        
        else{
          weightLabel.text = String(weight)
          hightLabel.text = String(height)
          ageLabel.text = String(age)
          targetLabel.text = String(target)
          genderLabel.text = gender
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
