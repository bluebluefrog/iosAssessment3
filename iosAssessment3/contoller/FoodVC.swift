
import UIKit

class FoodVC: UIViewController {
    
    var diningType:String = ""
    var isFood:Bool=true
    var complete:Int=0
    var foodList:[Food]=[]
    var exerciseList:[Exercise]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Food data
        foodList.append(Food(foodname:"Egg",calories: 167,img: UIImage(named:"Egg.jpg")!))
        foodList.append(Food(foodname:"Chicken breast",calories: 133,img: UIImage(named:"Chicken breast.jpg")!))
        foodList.append(Food(foodname:"beef",calories: 106,img: UIImage(named:"Beef.jpg")!))
        foodList.append(Food(foodname:"Pork",calories: 395,img: UIImage(named:"Pork.jpg")!))
        foodList.append(Food(foodname:"fish",calories: 113,img: UIImage(named:"Fish.jpg")!))
        foodList.append(Food(foodname:"Shrimp",calories: 85,img: UIImage(named:"Shrimp.jpg")!))
        foodList.append(Food(foodname:"Lamb",calories: 217,img: UIImage(named:"Lamb.jpg")!))
        foodList.append(Food(foodname:"corn",calories: 71,img: UIImage(named:"Corn.jpg")!))
        foodList.append(Food(foodname:"Pumpkin",calories: 74,img: UIImage(named:"Pumpkin.jpg")!))
        foodList.append(Food(foodname:"Seaweed",calories: 16,img: UIImage(named:"Seaweed.jpg")!))
        foodList.append(Food(foodname:"Mushroom",calories: 27,img: UIImage(named:"Mushroom.jpg")!))
        foodList.append(Food(foodname:"Orange",calories: 43,img: UIImage(named:"Orange.jpg")!))
        foodList.append(Food(foodname:"Grape",calories: 33,img: UIImage(named:"Grape.jpg")!))
        foodList.append(Food(foodname:"Mango",calories: 36,img: UIImage(named:"Mango.jpg")!))
        foodList.append(Food(foodname:"Apple",calories: 46,img: UIImage(named:"Apple.jpg")!))
        foodList.append(Food(foodname:"Watermelon",calories: 25,img: UIImage(named:"Watermelon.jpg")!))
        foodList.append(Food(foodname:"Peach",calories: 43,img: UIImage(named:"Peach.jpg")!))
        foodList.append(Food(foodname:"Chips",calories: 536,img: UIImage(named:"Chips.jpg")!))
        foodList.append(Food(foodname:"Cheese",calories: 349,img: UIImage(named:"Cheese.jpg")!))
        foodList.append(Food(foodname:"Bread",calories: 265,img: UIImage(named:"Bread.jpg")!))
        foodList.append(Food(foodname:"Pasta",calories: 131,img: UIImage(named:"Pasta.jpg")!))
        foodList.append(Food(foodname:"Carrot",calories: 41,img:
            UIImage(named:"11.jpg")!))
        foodList.append(Food(foodname:"Tomato",calories: 16,img:
            UIImage(named:"22.jpg")!))
        foodList.append(Food(foodname:"Potato",calories: 77,img:
            UIImage(named:"33.jpg")!))
        foodList.append(Food(foodname:"Sausage",calories: 346,img: UIImage(named:"44.jpg")!))
        foodList.append(Food(foodname:"Oyster",calories: 199,img:
            UIImage(named:"55.jpg")!))
        foodList.append(Food(foodname:"Bananas",calories: 89,img:
            UIImage(named:"66.jpg")!))
        foodList.append(Food(foodname:"Butter",calories: 717,img:
            UIImage(named:"77.jpg")!))
        
        //Exercise data
        exerciseList.append(Exercise(exerciseName: "Bicycle", calories: 276, img: UIImage(named:"bicycle.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Boxing", calories: 450, img: UIImage(named:"boxing.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Dance", calories: 300, img: UIImage(named:"dance.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Football", calories: 469, img: UIImage(named:"football.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Golf", calories: 186, img: UIImage(named:"golf.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Jump", calories: 448, img: UIImage(named:"jump.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Run", calories: 655, img: UIImage(named:"run.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Sit-up", calories: 480, img: UIImage(named:"sit-up.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Skiing", calories: 354, img: UIImage(named:"skiing.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Snooker", calories: 300, img: UIImage(named:"snooker.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Swimming", calories: 1036, img: UIImage(named:"swimming.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Tennis", calories: 352, img: UIImage(named:"tennis.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Walk", calories: 255, img: UIImage(named:"walk.jpg")!))
        exerciseList.append(Exercise(exerciseName: "Yoga", calories: 594, img: UIImage(named:"88.jpg")!))
        
    }
    @IBAction func OnAddClick(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "AddItemVC") as! AddItemVC
        if(isFood){
            vc.name="food name"
            vc.calories="calories"
            vc.dinningType=diningType
        }else{
            vc.name="sport name"
            vc.calories="calories"
            vc.isFood=false
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension FoodVC:UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
            1
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(isFood){
            return foodList.count
        }else{
            return exerciseList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCell.CellStyle.subtitle, reuseIdentifier: nil)
        
        if(isFood){
            cell.imageView!.image = foodList[indexPath.row].img
            cell.textLabel?.text=foodList[indexPath.row].foodname
            cell.detailTextLabel?.text=String(foodList[indexPath.row].calories)+" calories"+"/100g"
        }else{
            cell.imageView!.image = exerciseList[indexPath.row].img
            cell.textLabel?.text=exerciseList[indexPath.row].exerciseName
            cell.detailTextLabel?.text=String(exerciseList[indexPath.row].calories)+" calories"+"/60mins"

        }
        return cell
    }
}

extension FoodVC:UITableViewDelegate{
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true);
            let vc = storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeVC
            
            let completeData=UserDefaults.standard.value(forKey:"completeProfile")
            
            if(completeData==nil){
                complete=0
            }else if(completeData as! Int==1){
                complete=completeData as! Int
            }
            
            if(isFood&&complete==1){
                vc.currentTotalCalories+=foodList[indexPath.row].calories
                
                var curCal=UserDefaults.standard.value(forKey: "currentTotalCalories") as! Int
                curCal+=foodList[indexPath.row].calories
                UserDefaults.standard.set(curCal,forKey: "currentTotalCalories")
                
                if(diningType=="breakfast"){
                    var curCal=UserDefaults.standard.value(forKey: "breakfastTotalCalories") as! Int
                    curCal+=foodList[indexPath.row].calories
                    UserDefaults.standard.set(curCal,forKey: "breakfastTotalCalories")
                }
                else if(diningType=="lunch"){
                    var curCal=UserDefaults.standard.value(forKey: "lunchTotalCalories") as! Int
                    curCal+=foodList[indexPath.row].calories
                    UserDefaults.standard.set(curCal,forKey: "lunchTotalCalories")
                }
                else if(diningType=="dinner"){
                    var curCal=UserDefaults.standard.value(forKey: "dinnerTotalCalories") as! Int
                    curCal+=foodList[indexPath.row].calories
                    UserDefaults.standard.set(curCal,forKey: "dinnerTotalCalories")
                }
                else if(diningType=="snack"){
                    var curCal=UserDefaults.standard.value(forKey: "snackTotalCalories") as! Int
                    curCal+=foodList[indexPath.row].calories
                    UserDefaults.standard.set(curCal,forKey: "snackTotalCalories")
                }
                
                self.navigationController?.pushViewController(vc, animated: true)
                vc.navigationItem.setHidesBackButton(true, animated: true)
            
            }else if(!isFood&&complete==1){
                //when is not food
                vc.isFood=false
                vc.currentTotalConsumeCalories+=exerciseList[indexPath.row].calories
                
                var curCal=UserDefaults.standard.value(forKey: "currentTotalConsumeCalories") as! Int
                curCal+=exerciseList[indexPath.row].calories
                UserDefaults.standard.set(curCal,forKey: "currentTotalConsumeCalories")
                
                self.navigationController?.pushViewController(vc, animated: true)
                vc.navigationItem.setHidesBackButton(true, animated: true)
            }
        }
    }
