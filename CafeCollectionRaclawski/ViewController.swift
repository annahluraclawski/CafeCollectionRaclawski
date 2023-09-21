//
//  ViewController.swift
//  CafeCollectionRaclawski
//
//  Created by ANNAHLU RACLAWSKI on 9/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var menuOutlet: UILabel!
    
    @IBOutlet weak var cartOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var food : [String] = ["Fettucine Alfredo", "Cheeseburger", "Orange Chicken", "Pepperoni Pizza", "Turkey Sub", "Loaded Fries", "Caesar Salad"]
        var prices : [Double] = [14.99, 12.99, 11.99, 16.99, 10.99, 7.99, 10.99]
        var menu = ""
        
        for (foo, pric) in zip(food, prices) {
            menu = "\(menu) \(foo): \(pric)\n"
            
        }
        menuOutlet.text = "\(menu)"
        
    }
    
}

