//
//  Model.swift
//  MVC Example
//
//  Created by Vasilii on 16/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

struct Meal {
    let name: String
    let image: UIImage
    let note: String
    let rating: Int
    let date: Date
    
    var ratingBar: String {
        return String(repeating: "⭐️", count: rating)
    }
    
    var currentDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_RU")
        return dateFormatter.string(from: date)
    }
}
