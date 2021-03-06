import Foundation

public class BinarySearch {
    
    public static func binarySearch(array: [Int], value: Int ) -> Int? {
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let middle = Int(floor(Double(left + right) / 2.0))
            
            if array[middle] < value {
                left = middle + 1
            }
            else if array[middle] > value {
                right = middle - 1
            }
            else { return middle }
        }
        return nil
    }
}
