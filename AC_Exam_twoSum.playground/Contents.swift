//: Two Sum

import UIKit


//  O(n) solution
func twoSum(_ array: [Int], target: Int) -> ([Int])? {
    var dict = [Int: Int]()
    
    for i in 0 ..< array.count {
        if let newTarget = dict[array[i]] {
            return [newTarget + 1, i + 1]
        } else {
            dict[target - array[i]] =  i
        }
    }
    
    return nil
}

twoSum([3,2,4], target: 6)
