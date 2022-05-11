

import UIKit

class FoodVC: UIViewController {
    
    var isFood:Bool=true
    var foodList:[Food]=[]
    let exerciseList:[Exercise]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        foodList.append(Food(foodname:"Beef",calories: 100))
        foodList.append(Food(foodname:"Duck",calories: 100))
        foodList.append(Food(foodname:"Chicken",calories: 100))
        foodList.append(Food(foodname:"Egg",calories: 100))
        foodList.append(Food(foodname:"Chips",calories: 100))
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
        
        cell.imageView!.image = UIImage(named:"152922529.jpg")
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
