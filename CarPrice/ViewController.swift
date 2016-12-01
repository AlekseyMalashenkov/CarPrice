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
    
    
    @IBAction func CalculateCarCost(_ sender: UIButton) {
        let calcPrice = CalculateCarPrice()
        outCost.text = calcPrice.makePrice(matsCar: matsInCar, crankCar: crankcaseProtectionInCar, winterCar: winterTiresInCar, alloyCar: alloyWheelsInCar)
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

