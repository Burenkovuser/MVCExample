//
//  CellController.swift
//  MVC Example
//
//  Created by Vasilii on 16/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class CellController {
    
    func configureCell(_ cell: UITableViewCell, with meal: Meal) {
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = meal.ratingBar
        cell.imageView?.image = meal.image
    }
}
