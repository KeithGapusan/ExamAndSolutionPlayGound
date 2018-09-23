//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
var data = [1,3,4]
permutation(data)

//: [Next](@next)
func permutation(_ A : [Int]) -> Int {
    let array = A
    var index = 0
    var sorted = array.sorted(by:{$0 > $1})
    
    if array.contains(1){
        for data in sorted{
            if index < array.count - 1 {
                if ((data - sorted[index + 1]) != 1){
                    return 0
                }
            }
            index = index + 1
        }
    }else{
        return 0
    }
    
    
    return 1
}
