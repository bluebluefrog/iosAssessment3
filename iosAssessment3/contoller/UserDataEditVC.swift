//
//  UserDataVC.swift
//  iosAssessment3
//
//  Created by 王景彬 on 18/5/2022.
//

import UIKit

class UserDataEditVC:  UIViewController {
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var weightTextBox: UITextField!
    
    @IBOutlet weak var heightTextBox: UITextField!
    
    @IBOutlet weak var targetTextBox: UITextField!
    
    @IBOutlet weak var ageTextBox: UITextField!
    
    @IBOutlet weak var genderChoiseBox: UISegmentedControl!
    
    override func viewDidLoad() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        UserDefaults.standard.set(heightTextBox.text,forKey: "height")
        UserDefaults.standard.set(weightTextBox.text,forKey:"weight")
        UserDefaults.standard.set(targetTextBox.text,forKey:"target")
        UserDefaults.standard.set(ageTextBox.text,forKey:"age")
        
        if(genderChoiseBox.selectedSegmentIndex==0){
            UserDefaults.standard.set("male",forKey:"gender")
            print("male")
        }else{
            UserDefaults.standard.set("female",forKey:"gender")
            print("female")
        }
        let vc = storyboard?.instantiateViewController(identifier: "UserProfileVC") as! UserProfileVC
        self.navigationController?.pushViewController(vc, animated: true)
        vc.navigationItem.setHidesBackButton(true, animated: true)
    }
}
