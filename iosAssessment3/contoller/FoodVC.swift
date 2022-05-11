

import UIKit

class FoodVC: UIViewController {
    
    var diningType:String = ""
    var isFood:Bool=true
    var foodList:[Food]=[]
    let exerciseList:[Exercise]=[]

//    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodList.append(Food(foodname:"1号",calories: 100,img: UIImage(named:"1.jpg")!))
        foodList.append(Food(foodname:"2号",calories: 100,img: UIImage(named:"2.jpg")!))
        foodList.append(Food(foodname:"3号",calories: 100,img: UIImage(named:"3.jpg")!))
        foodList.append(Food(foodname:"4号",calories: 100,img: UIImage(named:"4.jpg")!))
        foodList.append(Food(foodname:"5号",calories: 100,img: UIImage(named:"5.jpg")!))
        foodList.append(Food(foodname:"6号",calories: 100,img: UIImage(named:"6.jpg")!))
        foodList.append(Food(foodname:"7号",calories: 100,img: UIImage(named:"7.jpg")!))
        foodList.append(Food(foodname:"8号",calories: 100,img: UIImage(named:"8.jpg")!))
        foodList.append(Food(foodname:"9号",calories: 100,img: UIImage(named:"9.jpg")!))
        foodList.append(Food(foodname:"10号",calories: 100,img: UIImage(named:"10.jpg")!))
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
