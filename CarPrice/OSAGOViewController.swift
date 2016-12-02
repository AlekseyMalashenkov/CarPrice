//
//  OSAGOViewController.swift
//  CarPrice
//
//  Created by Алексей Малашенков on 27.11.16.
//  Copyright © 2016 Алексей Малашенков. All rights reserved.
//

import UIKit

class OSAGOViewController: UIViewController {
    let calcPerem = CalcOSAGO()
    @IBOutlet weak var slideAge: UISlider!
    @IBOutlet weak var coefficientAge: UILabel!
    @IBOutlet weak var slidePower: UISlider!
    @IBOutlet weak var coefficientPower: UILabel!
    @IBOutlet weak var totalCostOSAGO: UILabel!
    
    @IBAction func AgeChange(_ sender: UISlider) {
        let agePerem = calcPerem.age(sliderAge: slideAge)
        coefficientAge.text = "Коэффициент возраста = \(agePerem)"
        
        let tmp1 = calcPerem.calcTotalPrice(tmpAge: agePerem, tpmPower: calcPerem.power(sliderPower: slidePower))
        totalCostOSAGO.text = "Итого: \(tmp1)р"
    }
    
    @IBAction func PowerChange(_ sender: UISlider) {
        let powerPerem = calcPerem.power(sliderPower: slidePower)
        coefficientPower.text = "Коэффициент мощности = \(powerPerem)"
        
        let tmp2 = calcPerem.calcTotalPrice(tmpAge:calcPerem.age(sliderAge: slideAge), tpmPower: powerPerem)
        totalCostOSAGO.text = "Итого: \(tmp2)р"
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
