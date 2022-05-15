

import UIKit

class FoodVC: UIViewController {
    
    var diningType:String = ""
    var isFood:Bool=true
    var foodList:[Food]=[]
    let exerciseList:[Exercise]=[]

//    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodList.append(Food(foodname:"Egg",calories: 167,img: UIImage(named:"egg.jpg")!))
        foodList.append(Food(foodname:"Chicken breast",calories: 133,img: UIImage(named:"chicken.jpg")!))
        foodList.append(Food(foodname:"beef",calories: 106,img: UIImage(named:"beef.jpg")!))
        foodList.append(Food(foodname:"Pork",calories: 395,img: UIImage(named:"pork.jpg")!))
        foodList.append(Food(foodname:"fish",calories: 113,img: UIImage(named:"fish.jpg")!))
        foodList.append(Food(foodname:"Shrimp",calories: 85,img: UIImage(named:"shrimp.jpg")!))
        foodList.append(Food(foodname:"Lamb",calories: 217,img: UIImage(named:"lamb.jpg")!))
        foodList.append(Food(foodname:"corn",calories: 71,img: UIImage(named:"corn.jpg")!))
        foodList.append(Food(foodname:"Pumpkin",calories: 74,img: UIImage(named:"pumpkin.jpg")!))
        foodList.append(Food(foodname:"Seaweed",calories: 16,img: UIImage(named:"seaweed.jpg")!))
        foodList.append(Food(foodname:"Mushroom",calories: 27,img: UIImage(named:"mushroom.jpg")!))
        foodList.append(Food(foodname:"Orange",calories: 43,img: UIImage(named:"orange.jpg")!))
        foodList.append(Food(foodname:"Grape",calories: 33,img: UIImage(named:"grape.jpg")!))
        foodList.append(Food(foodname:"Mango",calories: 36,img: UIImage(named:"mango.jpg")!))
        foodList.append(Food(foodname:"Apple",calories: 46,img: UIImage(named:"apple.jpg")!))
        foodList.append(Food(foodname:"Watermelon",calories: 25,img: UIImage(named:"watermelon.jpg")!))
        foodList.append(Food(foodname:"Peach",calories: 43,img: UIImage(named:"peach.jpg")!))
        foodList.append(Food(foodname:"Chips",calories: 536,img: UIImage(named:"chips.jpg")!))
        foodList.append(Food(foodname:"Cheese",calories: 349,img: UIImage(named:"cheese.jpg")!))
        foodList.append(Food(foodname:"Bread",calories: 265,img: UIImage(named:"bread.jpg")!))
        foodList.append(Food(foodname:"Pasta",calories: 131,img: UIImage(named:"pasta.jpg")!))
       
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
        
        cell.imageView!.image = foodList[indexPath.row].img
        cell.textLabel?.text=foodList[indexPath.row].foodname
        cell.detailTextLabel?.text=String(foodList[indexPath.row].calories)
        
        return cell
    }
}

extension FoodVC:UITableViewDelegate{

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true);
        }
    }
