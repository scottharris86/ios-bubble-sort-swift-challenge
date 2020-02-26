import UIKit

func bubbleSort(_ array: inout [Int]){
    var swap = false
    repeat {
        swap = false
        for index in 0..<array.count {
            let first = array[index]
            let nextIndex = index + 1
            if nextIndex < array.count {
                let next = array[nextIndex]
                if first > next {
                    array[index] = next
                    array[nextIndex] = first
                    swap = true
                }
            }
        }
        
    } while swap
    
}


// Test Cases
var arr1 = [1, 3, 6, 2, 4, 5]
var arr3 = [6, 5, 4, 3, 2, 1]
bubbleSort(&arr1) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr1, by: >) // returns [6, 5, 4, 3, 2, 1]
bubbleSort(&arr3) // returns [6, 5, 4, 3, 2, 1]


// Test Cases (Stretch Goal)
//var arr4 = [1, 3, 6, 2, 4, 5]
//var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
//var arr6 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
//bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]
