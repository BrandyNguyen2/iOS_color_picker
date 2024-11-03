//
//  Persistence.swift
//  Color picker
//
//  Created by Brandy Nguyen on 10/22/24.
//

import CoreData
import Foundation
import SwiftUI

class Persistence: ObservableObject {
    @Published var redValue: Float = UserDefaults.standard.float(forKey: "redValue") {
        didSet { UserDefaults.standard.set(redValue, forKey: "redValue") }
    }
    
    @Published var greenValue: Float = UserDefaults.standard.float(forKey: "greenValue") {
        didSet { UserDefaults.standard.set(greenValue, forKey: "greenValue") }
    }
    
    @Published var blueValue: Float = UserDefaults.standard.float(forKey: "blueValue") {
        didSet { UserDefaults.standard.set(blueValue, forKey: "blueValue") }
    }
    
    @Published var redSwitch: Bool = UserDefaults.standard.bool(forKey: "redSwitch") {
        didSet { UserDefaults.standard.set(redSwitch, forKey: "redSwitch") }
    }
    
    @Published var greenSwitch: Bool = UserDefaults.standard.bool(forKey: "greenSwitch") {
        didSet { UserDefaults.standard.set(greenSwitch, forKey: "greenSwitch") }
    }
    
    @Published var blueSwitch: Bool = UserDefaults.standard.bool(forKey: "blueSwitch") {
        didSet { UserDefaults.standard.set(blueSwitch, forKey: "blueSwitch") }
    }
    
    // Function to reset values
    func resetValues() {
        redValue = 1.0
        greenValue = 1.0
        blueValue = 1.0
        redSwitch = true
        greenSwitch = true
        blueSwitch = true
    }
}
