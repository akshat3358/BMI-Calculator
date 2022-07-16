


import Foundation
import UIKit


struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height : Float,weight:Float){
        let bmiValue = weight / pow(height,2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Samosa.", color : .systemBlue )
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are totally fit.", color: .systemGreen)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less Samosa.", color: .systemRed)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ??  UIColor.gray
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
