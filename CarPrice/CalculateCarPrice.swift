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
    
    func makePrice(matsCar: UISwitch, crankCar: UISwitch, winterCar: UISwitch, alloyCar: UISwitch) -> String {
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
        return "Цена в выбранной комплектации: \(startPrice + sumDop)р. \nВ том числе доп. оборудование: \(sumDop)р. \nСкидка на доп. оборудование (10%): \(sumDop / 100)р. \nИтого: \(startPrice + sumDop - (sumDop / 100))р."
    }
}
