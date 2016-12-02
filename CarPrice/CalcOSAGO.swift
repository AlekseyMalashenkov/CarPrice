//
//  CalcOSAGO.swift
//  CarPrice
//
//  Created by Алексей Малашенков on 02.12.16.
//  Copyright © 2016 Алексей Малашенков. All rights reserved.
//

import UIKit

class CalcOSAGO: NSObject {
    let townCoef = 1.8
    let driveCoef = 1.8
    let bonusCoef = 1.0
    let defOSAFO = 1800.0
    func age(sliderAge: UISlider) -> Double {
        let age = sliderAge.value
        var tmpAge = 0.0
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
        return tmpAge
    }
    
    func power(sliderPower: UISlider) -> Double {
        var tmpPower = 0.0
        let power = sliderPower.value
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
        return tmpPower
    }
    
    func calcTotalPrice(tmpAge: Double, tpmPower: Double) -> Double {
        let totalPriceOSAGO = defOSAFO * townCoef * driveCoef * bonusCoef * tmpAge * tpmPower
        return totalPriceOSAGO
    }
    
}















