//
//  Food.swift
//  iosAssessment3
//
//  Created by 王景彬 on 11/5/2022.
//

import UIKit

class Food{
    
    var foodname:String
    var calories:Int
    var img:UIImage
   
    init(foodname:String,calories:Int,img:UIImage) {
        self.foodname=foodname
        self.calories=calories
        self.img=img
    }

}
