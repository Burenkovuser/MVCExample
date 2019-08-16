//
//  ViewController.swift
//  MVC Example
//
//  Created by Vasilii on 16/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! //Tied with view
    
    var meals: [Meal] = [] // Tied with model
    
    let cellController = CellController()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        meals = DataManager.shared.loadMeals()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showMeaiDetail" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let meal = meals[indexPath.row]
        let detailVC = segue.destination as! MealDetailViewController
        detailVC.meal = meal
    }

}

