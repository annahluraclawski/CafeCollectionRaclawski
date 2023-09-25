//
//  ViewController.swift
//  CafeCollectionRaclawski
//
//  Created by ANNAHLU RACLAWSKI on 9/18/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var menuOutlet: UITextView!
    
    @IBOutlet weak var foodOutlet: UITextField!
    
    @IBOutlet weak var quantityOutlet: UITextField!
    
    @IBOutlet weak var cartOutlet: UILabel!
    
    let food : [String] = ["Fettucine Alfredo", "Cheeseburger", "Orange Chicken", "Pepperoni Pizza", "Turkey Sub", "Loaded Fries", "Caesar Salad"]
    let price : [Double] = [14.99, 12.99, 11.99, 16.99, 10.99, 7.99, 10.99]
    
    var cart : [String : String] = [:]
    
    var menu = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        foodOutlet.delegate = self
        quantityOutlet.delegate = self
        
        for (foo, pric) in zip(food, price) {
            menu = "\(menu) \(foo): \(pric)\n"
        }
        menuOutlet.text = "\(menu)"
        
        let item = foodOutlet.text!
        
        //cart[foodOutlet.text!] = Int(quantityOutlet.text!)
        }
    
    @IBAction func addAction(_ sender: UIButton) {
        foodOutlet.resignFirstResponder()
        quantityOutlet.resignFirstResponder()
    }
    
}

