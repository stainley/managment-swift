
import Foundation

extension Management {
    
    // Extension created to shadow print() function and remove the second printing object
    public func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        
        var itemClear = items
        
        if items.count == 2 {
            itemClear.remove(at: 1)
        }
     
        let output = itemClear.map { "\($0)" }.joined(separator: separator)
        Swift.print(output, terminator: terminator)
    }
    
}
