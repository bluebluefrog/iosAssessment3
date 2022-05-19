import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var availableCaloriesLabel: UILabel!
    
    @IBOutlet weak var eatCaloriesLabel: UILabel!
    
    @IBOutlet weak var exerciseCaloriesLabel: UILabel!
    
    @IBOutlet weak var breakfastCaloriesLabel: UILabel!
    
    @IBOutlet weak var lunchCaloriesLabel: UILabel!
    
    @IBOutlet weak var dinnerCaloriesLabel: UILabel!
    
    @IBOutlet weak var snackCaloriesLabel: UILabel!
    
    @IBOutlet weak var excriciseCosumeCaloriesLabel: UILabel!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    var availableCalories:Int=0
    
    var currentTotalCalories:Int=0
    
    var currentTotalConsumeCalories:Int=0
    
    var isFood=true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(checkUserInfo()){
            
            var availableCaloriesData = UserDefaults.standard.value(forKey: "availableCalories") as! Int
            var currentTotalCaloriesData = UserDefaults.standard.value(forKey: "currentTotalCalories") as! Int
            var currentTotalConsumeCaloriesData = UserDefaults.standard.value(forKey: "currentTotalConsumeCalories") as! Int
            
            var breakfastTotalCaloriesData=UserDefaults.standard.value(forKey: "breakfastTotalCalories") as! Int
            var lunchTotalCaloriesData=UserDefaults.standard.value(forKey: "lunchTotalCalories") as! Int
            var dinnerTotalCaloriesData=UserDefaults.standard.value(forKey: "dinnerTotalCalories") as! Int
            var snackTotalCaloriesData=UserDefaults.standard.value(forKey: "snackTotalCalories") as! Int
            
            if(isFood){
                availableCalories=availableCaloriesData-currentTotalCalories
                UserDefaults.standard.set(availableCalories, forKey: "availableCalories")
            }
            else{
                availableCalories=availableCaloriesData+currentTotalConsumeCalories
                UserDefaults.standard.set(availableCalories, forKey: "availableCalories")
            }
            availableCaloriesLabel.text=String(availableCalories)
            eatCaloriesLabel.text=String(currentTotalCaloriesData)
            breakfastCaloriesLabel.text=String(breakfastTotalCaloriesData)
            lunchCaloriesLabel.text=String(lunchTotalCaloriesData)
            dinnerCaloriesLabel.text=String(dinnerTotalCaloriesData)
            snackCaloriesLabel.text=String(snackTotalCaloriesData)
            exerciseCaloriesLabel.text=String(currentTotalConsumeCaloriesData)
            excriciseCosumeCaloriesLabel.text=String(currentTotalConsumeCaloriesData)
            
        }else{
            //tell user to set their data
            ErrorLabel.text="Pleace Setup UserData!"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier=="breackfastCalories"){
            let foodVC=segue.destination as! FoodVC
            foodVC.diningType="breakfast"
        }
        if(segue.identifier=="lunchCalories"){
            let foodVC=segue.destination as! FoodVC
            foodVC.diningType="lunch"
        }
        if(segue.identifier=="dinnerCalories"){
            let foodVC=segue.destination as! FoodVC
            foodVC.diningType="dinner"
        }
        if(segue.identifier=="snackCalories"){
            let foodVC=segue.destination as! FoodVC
            foodVC.diningType="snack"
        }
        if(segue.identifier=="excerciseCosume"){
            let foodVC=segue.destination as! FoodVC
            foodVC.isFood=false
        }
        if(segue.identifier=="userProfile"){
            let userProfileVC=segue.destination as! UserProfileVC
            userProfileVC.navigationItem.setHidesBackButton(true, animated: true)
        }
    }
    
    func checkUserInfo()->Bool{
        let weight=UserDefaults.standard.value(forKey: "weight")
        let height=UserDefaults.standard.value(forKey: "height")
        let age=UserDefaults.standard.value(forKey: "age")
        let target=UserDefaults.standard.value(forKey: "target")
        let gender=UserDefaults.standard.value(forKey: "gender")
        if (height==nil||weight==nil||age==nil||target==nil||gender==nil)
        {
           return false
        }
        return true
    }
}
