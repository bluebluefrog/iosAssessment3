
import UIKit

class UserDataEditVC:  UIViewController {
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var weightTextBox: UITextField!
    
    @IBOutlet weak var heightTextBox: UITextField!
    
    @IBOutlet weak var targetTextBox: UITextField!
    
    @IBOutlet weak var ageTextBox: UITextField!
    
    @IBOutlet weak var genderChoiseBox: UISegmentedControl!
    
    var height:Int=0
    
    var weight:Int=0
    
    var target:Int=0
    
    var age:Int=0
    
    var gender:String="other"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    @IBAction func submitButton(_ sender: Any) {
        if(heightTextBox.text==""||weightTextBox.text==""||targetTextBox.text==""||ageTextBox.text==""){
            errorLabel.text="Filed cant be empty!"
        }else{
            height=Int(heightTextBox.text!)!
            weight=Int(weightTextBox.text!)!
            target=Int(targetTextBox.text!)!
            age=Int(ageTextBox.text!)!
       
            UserDefaults.standard.set(height,forKey: "height")
            UserDefaults.standard.set(weight,forKey:"weight")
            UserDefaults.standard.set(target,forKey:"target")
            UserDefaults.standard.set(age,forKey:"age")
        
            if(genderChoiseBox.selectedSegmentIndex==0){
                UserDefaults.standard.set("male",forKey:"gender")
            }else{
                UserDefaults.standard.set("female",forKey:"gender")
            }
            
            CalorieCalculator.resetAllCaloriesInfo()
            let vc = storyboard?.instantiateViewController(identifier: "UserProfileVC") as! UserProfileVC
            self.navigationController?.pushViewController(vc, animated: true)
            vc.navigationItem.setHidesBackButton(true, animated: true)
        }
    }
    

    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
     }
}
