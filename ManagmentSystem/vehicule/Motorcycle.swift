
import Foundation

class Motorcycle : Vehicle {

    private let sidecar: Bool

    init(make: String, plate: String, color: String, category: String, sidecar: Bool) {
        self.sidecar = sidecar
        super.init(make: make, plate: plate, color: color, category: category)
    }
    
    func getSidecar() -> Bool {
        return self.sidecar
    }
}
