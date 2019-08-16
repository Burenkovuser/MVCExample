//
//  Extension + MealDetailVC.swift
//  MVC Example
//
//  Created by Vasilii on 16/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

extension MealDetailViewController {
    
    func updateUI(with size: CGSize) {
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal //задаем ориентацию
        
        title = meal.name
        imageView.image = meal.image
        mealRatingLabel.text = meal.ratingBar
        mealNotesLabel.text = meal.note
        mealDateLabel.text = meal.currentDate
    }
}
