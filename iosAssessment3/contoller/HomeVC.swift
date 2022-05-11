

import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var availableCaloriesLabel: UILabel!
    
    @IBOutlet weak var eatCaloriesLabel: UILabel!
    
    @IBOutlet weak var exerciseCaloriesLabel: UILabel!
    
    @IBOutlet weak var breakfastCaloriesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
