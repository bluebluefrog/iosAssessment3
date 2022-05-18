import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var availableCaloriesLabel: UILabel!
    
    @IBOutlet weak var eatCaloriesLabel: UILabel!
    
    @IBOutlet weak var exerciseCaloriesLabel: UILabel!
    
    @IBOutlet weak var breakfastCaloriesLabel: UILabel!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    var availableCalories:Int=0
    
    var currentTotalCalories:Int=0
    
    var currentTotalConsumeCalories:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(checkUserInfo()){
//        UserDefaults.standard.set(availableCalories, forKey: "availableCalories")
//        UserDefaults.standard.set(currentTotalCalories, forKey: "currentTotalCalories")
//        UserDefaults.standard.set(currentTotalConsumeCalories, forKey: "currentTotalConsumeCalories")
        
        var availableCaloriesData = UserDefaults.standard.value(forKey: "availableCalories") as! Int
        var currentTotalCaloriesData = UserDefaults.standard.value(forKey: "currentTotalCalories") as! Int
        var currentTotalConsumeCaloriesData = UserDefaults.standard.value(forKey: "currentTotalConsumeCalories") as! Int
    
        
        availableCalories=availableCaloriesData-currentTotalCaloriesData
        availableCaloriesLabel.text=String(availableCalories)
        
        UserDefaults.standard.set(availableCalories, forKey: "availableCalories")

        }else{
            //tell user to set their data
            ErrorLabel.text="Pleace Setup UserData!"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="breackfastCalories"{
            let foodVC=segue.destination as! FoodVC
            foodVC.diningType="breakfast"
        }
        if segue.identifier=="lunchCalories"{
            let foodVC=segue.destination as! FoodVC
            foodVC.diningType="lunch"
        }
        if segue.identifier=="dinnerCalories"{
            let foodVC=segue.destination as! FoodVC
            foodVC.diningType="dinner"
        }
        if segue.identifier=="snackCalories"{
            let foodVC=segue.destination as! FoodVC
            foodVC.diningType="snack"
        }
        if segue.identifier=="excerciseCosume"{
            let foodVC=segue.destination as! FoodVC
            foodVC.isFood=false
        }
    }
    
    func checkUserInfo()->Bool{
        let height=UserDefaults.standard.value(forKey: "height")
        let weight=UserDefaults.standard.value(forKey: "weight")
        let age=UserDefaults.standard.value(forKey: "age")
        if (height==nil||weight==nil||age==nil)
        {
           return false
        }
        return true
    }
}
