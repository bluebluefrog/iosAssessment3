//
//  UserData.swift
//  iosAssessment3
//
//  Created by 王景彬 on 18/5/2022.
//

import UIKit

class UserData{
    
    func getUserDefult(key:String,type:String)->Any{
        var value:Any
        if(type=="Int"){
        value=UserDefaults.standard.value(forKey: key) as! Int
        return value
        }
        else if(type=="String"){
        value=UserDefaults.standard.value(forKey: key) as! String
        return value
        }
        else{
        value=UserDefaults.standard.value(forKey: key)
        return value
        }
        
        
    }
    
    func setUserDefult(key:String,value:Any){
        UserDefaults.standard.set(value,forKey: key)
    }

}
