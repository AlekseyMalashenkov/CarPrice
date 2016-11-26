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
        let startPrice = 4500000
        let mats = 30000
        let crankcase = 60000
        let winterTires = 60000
        let alloyWheels = 60000
        var sumDop = 0
        if matsInCar.isOn {
            sumDop += mats
        }
        if crankcaseProtectionInCar.isOn {
            sumDop += crankcase
        }
        if winterTiresInCar.isOn {
            sumDop += winterTires
        }
        if alloyWheelsInCar.isOn {
            sumDop += alloyWheels
        }
        outCost.text = "Цена в выбранной комплектации: \(startPrice)р. \nВ том числе доп. оборудование: \(sumDop)р. \nСкидка на доп. оборудование (10%): \(sumDop / 100)р. \nИтого: \(startPrice + sumDop - (sumDop / 100))р."
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

