
import Foundation

class Employee {
    
    private let name: String
    private var birthYear: Int
    private var age: Int = 0
    private var monthlyIncome: Double = 0.0
    private var rate: Int = 100
    private var employeeVehicle: Vehicle?
    
    var contract: Contract?
    
    
    init(name: String, birthYear: Int, rate: Int, monthlyIncomem: Double, employeeVehicle: Vehicle) {
        self.name = name
        self.birthYear = birthYear
        self.rate = rate
        self.monthlyIncome = monthlyIncomem
        self.employeeVehicle = employeeVehicle
    }
    
    init(name: String, birthYear: Int, rate: Int, monthlyIncome: Double) {
        self.name = name
        self.birthYear = birthYear
        self.rate = rate
        self.monthlyIncome = monthlyIncome
    }
    
    
    init(name: String, birthYear: Int, rate: Int) {
        self.name = name
        self.birthYear = birthYear
        self.rate = rate > 100 ? 100 : rate
        printToLowercase(name: name, employee: self)
    }
    
    init(name: String, birthYear: Int) {
        self.name = name
        self.birthYear = birthYear
        printToLowercase(name: name, employee: self)
    }
    
    func getAge() -> Int {
        let currentYear = Calendar.current.component(.year, from: Date())
        // Because the current year = 2022, we need to substract 4 years to go back in time, to match the old log file
        return ((currentYear - 4) - birthYear)
        //return (currentYear - birthYear)
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getRate() -> Int {
        return self.rate
    }
    
    func getVehicle() -> Vehicle? {
        if let unwrap = self.employeeVehicle {
            return unwrap
        } else {
            return nil
        }
     
    }
    
    func annualIncome() -> Double {
        
        return (12 * monthlyIncome * Double(rate) / 100)
    }   

    func signContract(contract: Contract) {
        self.contract = contract
    }
  
}
