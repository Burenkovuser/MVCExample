//
//  MealDetailViewController.swift
//  MVC Example
//
//  Created by Vasilii on 16/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController {
    
    @IBOutlet weak var mealStackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mealRatingLabel: UILabel!
    @IBOutlet weak var mealNotesLabel: UILabel!
    @IBOutlet weak var mealDateLabel: UILabel!
    
    var meal: Meal! //чтобы передать объект модели из предыдущего view controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(with: view.bounds.size)
    }

    //метод вызывется при поворте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }
}
