import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var availableCaloriesLabel: UILabel!
    
    @IBOutlet weak var eatCaloriesLabel: UILabel!
    
    @IBOutlet weak var exerciseCaloriesLabel: UILabel!
    
    @IBOutlet weak var breakfastCaloriesLabel: UILabel!
    
    var availableCalories:Int=0
    
    var currentTotalCalories:Int=0
    
    var currentTotalConsumeCalories:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(currentTotalCalories, forKey: "currentTotalCalories")
        UserDefaults.standard.set(currentTotalConsumeCalories, forKey: "currentTotalConsumeCalories")
        
        var availableCaloriesData = UserDefaults.standard.value(forKey: "availableCalories") as! Int
        var currentTotalCaloriesData = UserDefaults.standard.value(forKey: "currentTotalCalories") as! Int
        var currentTotalConsumeCaloriesData = UserDefaults.standard.value(forKey: "currentTotalConsumeCalories") as! Int
        
        //defualt value for tableView
//        if (availableCalories == 1)
//        {
//            UserDefaults.standard.set(2000, forKey: "availableCalories")
//        }
//
//        if (currentTotalCalories == 0)
//        {
//            UserDefaults.standard.set(0, forKey: "currentTotalCalories")
//        }
//        if (currentTotalConsumeCalories == 0)
//        {
//            UserDefaults.standard.set(0, forKey: "currentTotalConsumeCalories")
//        }
        
        availableCalories=availableCaloriesData-currentTotalCaloriesData
        availableCaloriesLabel.text=String(availableCalories)
        
        UserDefaults.standard.set(availableCalories, forKey: "availableCalories")
        UserDefaults.standard.set(currentTotalCalories, forKey: "currentTotalCalories")
        UserDefaults.standard.set(currentTotalConsumeCalories, forKey: "currentTotalConsumeCalories")
        
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
}
