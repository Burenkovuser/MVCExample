//
//  DataManager.swift
//  MVC Example
//
//  Created by Vasilii on 16/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit


class DataManager {
    
    static let shared = DataManager() // singleton
    
    func saveMeals(_ meals: [Meal]) {
        //TODO implemate save meals
    }
    func loadMeals() -> [Meal] {
        let meals = [
            Meal(name: "Суп",
                 image:  #imageLiteral(resourceName: "First"),
                 note: "Борщ",
                 rating: 7,
                 date: Date()
            ),
            Meal(name: "Горячие",
                 image: #imageLiteral(resourceName: "Second"),
                 note: "Плов",
                 rating: 9,
                 date: Date()
            ),
            Meal(name: "Десерт",
                 image: #imageLiteral(resourceName: "Third"),
                 note: "Мороженное",
                 rating: 5,
                 date: Date()
            )
        ]
        return meals
    }
}

