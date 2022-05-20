
import UIKit

class AddItemVC: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var nameTextBox: UITextField!
    @IBOutlet weak var caloriesTextBox: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    var name:String=""
    
    var calories:String=""
    
    
    var isFood:Bool=true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        nameLabel.text=name
        caloriesLabel.text=calories
    }
    
    @IBAction func onClickButton(_ sender: Any) {
        
        if(nameTextBox.text==""||caloriesTextBox.text==""){
            errorLabel.text="Filed cant be empty!"
        }else{
            let nameInput:String=nameTextBox.text!
            let caloriesInput:Int=Int(caloriesTextBox.text!)!
            
            let vc = storyboard?.instantiateViewController(identifier: "FoodVC") as! FoodVC
            if(isFood){
                vc.foodList.append(Food(foodname: nameInput, calories: caloriesInput, img: UIImage(named:"unionFood.jpg")!))
            }else{
                vc.isFood=false
                vc.exerciseList.append(Exercise(exerciseName: nameInput, calories: caloriesInput, img: UIImage(named:"unionSport.jpg")!))
            }
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
