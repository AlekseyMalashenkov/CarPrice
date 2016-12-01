//
//  CalculateCarPrice.swift
//  CarPrice
//
//  Created by Алексей Малашенков on 01.12.16.
//  Copyright © 2016 Алексей Малашенков. All rights reserved.
//

import UIKit

class CalculateCarPrice: NSObject {
    let startPrice = 4500000.0
    let mats = 30000.0
    let crankcase = 60000.0
    let winterTires = 60000.0
    let alloyWheels = 60000.0
    var sumDop = 0.0
    
    func makePrice(matsCar: UISwitch, crankCar: UISwitch, winterCar: UISwitch, alloyCar: UISwitch) -> Double {
        if matsCar.isOn {
            sumDop += mats
        }
        if crankCar.isOn {
            sumDop += crankcase
        }
        if winterCar.isOn {
            sumDop += winterTires
        }
        if alloyCar.isOn {
            sumDop += alloyWheels
        }
        return sumDop
    }
}
