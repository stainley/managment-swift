
import Foundation

class Manager : Employee {
    private var nbClients: Int
    private var nbTravelDays: Int
    private var employeeVehicle: Car?

    private let GAIN_FACTOR_CLIENT: Int = 500
    private let GAIN_FACTOR_TRAVEL: Int = 100
    
    init(name: String, birthYear: Int, nbClients: Int, nbTravelDays: Int, employeeVehicle: Car) {
        
        self.nbClients = nbClients
        self.nbTravelDays = nbTravelDays
        self.employeeVehicle = employeeVehicle
        super.init(name: name, birthYear: birthYear)
    }
    
    init(name: String, birthYear: Int, nbClients: Int, nbTravelDays: Int, rate: Int) {
        self.nbClients = nbClients
        self.nbTravelDays = nbTravelDays
        super.init(name: name, birthYear: birthYear, rate: rate)
    }
    

    init(name: String, birthYear: Int, nbClients: Int, nbTravelDays: Int) {
        self.nbClients = nbClients
        self.nbTravelDays = nbTravelDays
        super.init(name: name, birthYear: birthYear)
    }



    init(name: String, birthYear: Int, nbClients: Int, nbTravelDays: Int, rate: Int, employeeVehicle: Car) {
       self.employeeVehicle = employeeVehicle
        self.nbClients = nbClients
        self.nbTravelDays = nbTravelDays
        super.init(name: name, birthYear: birthYear, rate: rate)
    }
    
    override func annualIncome() -> Double {
        let yearlyBaseSalary = super.annualIncome()
        var totalBonusClient: Int = 0
        var travelledDays: Int = 0
        
        for _ in 1...nbClients {
            totalBonusClient += GAIN_FACTOR_CLIENT
        }
        
        for _ in 1...nbTravelDays {
            travelledDays += GAIN_FACTOR_TRAVEL
        }
        
        return yearlyBaseSalary + Double(totalBonusClient) + Double(travelledDays)
    }
    
    func getNbClients() -> Int {
        return self.nbClients
    }
    
    func getNbTravelDays() -> Int {
        return self.nbTravelDays
    }
    
    override func getVehicle() -> Vehicle? {
        return self.employeeVehicle
    }

}
