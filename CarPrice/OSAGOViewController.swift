//
//  OSAGOViewController.swift
//  CarPrice
//
//  Created by Алексей Малашенков on 27.11.16.
//  Copyright © 2016 Алексей Малашенков. All rights reserved.
//

import UIKit

class OSAGOViewController: UIViewController {

    @IBOutlet weak var slideAge: UISlider!
    @IBOutlet weak var coefficientAge: UILabel!
    @IBOutlet weak var slidePower: UISlider!
    @IBOutlet weak var coefficientPower: UILabel!
    @IBOutlet weak var totalCostOSAGO: UILabel!
    
    var tmpAge = 0.0
    @IBAction func AgeChange(_ sender: UISlider) {
        let age = slideAge.value
        
        
        switch age {
        case 21...25:
            tmpAge = 1.7
        case 26...30:
            tmpAge = 1.6
        case 30...55:
            tmpAge = 1.0
        default:
            tmpAge = 1.8
        }
        coefficientAge.text = "Коэффициент возраста = \(tmpAge)"
    }
    var tmpPower = 0.0
    @IBAction func PowerChange(_ sender: UISlider) {
        let power = slidePower.value
        
        switch power {
        case 49...50:
            tmpPower = 0.6
        case 51...70:
            tmpPower = 1.0
        case 71...100:
            tmpPower = 1.1
        case 101...120:
            tmpPower = 1.2
        case 121...150:
            tmpPower = 1.4
        default:
            tmpPower = 1.6
        }
        coefficientPower.text = "Коэффициент мощности = \(tmpPower)"
        let townCoef = 1.8
        let driveCoef = 1.8
        let bonusCoef = 1.0
        let totalPrice = 1980.0 * townCoef * driveCoef * bonusCoef * tmpPower * tmpAge
        totalCostOSAGO.text = "Итого: \(totalPrice)р"
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
