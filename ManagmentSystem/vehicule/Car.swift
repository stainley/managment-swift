
import Foundation

class Car : Vehicle {

    private let gear: String
    private let type: String

    init(make: String, plate: String, color: String, category: String, gear: String, type: String) {
        self.gear = gear
        self.type = type
        super.init(make: make, plate: plate, color: color, category: category)
    }
    
    func getGear() -> String {
        return self.gear
    }
    
    func getType() -> String {
        return self.type
    }
}
