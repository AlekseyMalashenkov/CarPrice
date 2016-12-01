//
//  ViewController.swift
//  CarPrice
//
//  Created by Алексей Малашенков on 26.11.16.
//  Copyright © 2016 Алексей Малашенков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var matsInCar: UISwitch!
    @IBOutlet weak var crankcaseProtectionInCar: UISwitch!
    @IBOutlet weak var winterTiresInCar: UISwitch!
    @IBOutlet weak var alloyWheelsInCar: UISwitch!
    let calcPrice = CalculateCarPrice()
    
    @IBAction func CalculateCarCost(_ sender: UIButton) {
        
        
        let total = calcPrice.makePrice(matsCar: matsInCar, crankCar: crankcaseProtectionInCar, winterCar: winterTiresInCar, alloyCar: alloyWheelsInCar)
        
        
        outCost.text = "Цена в выбранной комплектации: \(calcPrice.startPrice + total)р. \nВ том числе доп. оборудование: \(total)р. \nСкидка на доп. оборудование (10%): \(total / 100)р. \nИтого: \(calcPrice.startPrice + total - (total / 100))р."
    }
    
    @IBOutlet weak var outCost: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

