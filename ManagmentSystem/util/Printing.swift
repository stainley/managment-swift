
import Foundation

extension Employee {
    
    func printToLowercase(name: String, employee: Any)  {
        print("We have a new employee: \(name), as \(String.init(describing:type(of: employee)).lowercased())")
    }
}
