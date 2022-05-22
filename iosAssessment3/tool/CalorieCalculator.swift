
import Foundation

class CalorieCalculator {
    
    static func calorieCalculate()->Int{
        
        let weight=UserDefaults.standard.value(forKey: "weight") as! Int
        let height=UserDefaults.standard.value(forKey: "height") as! Int
        let age=UserDefaults.standard.value(forKey: "age") as! Int
        let target=UserDefaults.standard.value(forKey: "target") as! Int
        let gender=UserDefaults.standard.value(forKey: "gender") as! String

        var totalCalories:Int=0
        if(gender=="male"){
            if(weight>target){
                totalCalories = 10 * weight + 6 * height - 5 * age - 105
            }
            else if(target>weight){
                totalCalories = 10 * weight + 6 * height - 5 * age + 205
            }
            else{
                totalCalories = 10 * weight + 6 * height - 5 * age + 5
            }
        }else if(gender=="female"){
            if(weight>target){
                totalCalories = 10 * weight + 6 * height - 5 * age - 261
            }
            else if(target>weight){
                totalCalories = 10 * weight + 6 * height - 5 * age + 61
            }
            else{
                totalCalories = 10 * weight + 6 * height - 5 * age - 161
            }
        }
        return totalCalories
    }
    
}
