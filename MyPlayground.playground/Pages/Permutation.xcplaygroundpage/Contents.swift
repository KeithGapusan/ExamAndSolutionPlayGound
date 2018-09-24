//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
var data = [1,3,4]
var data2 = ["A", "B", "C"]
permutation(data)
permutation(data2)
//print(data)

var arr = Array("ABC".characters)
//permutations(arr.count, &arr)
permutation(length : arr.count , charArray: arr)
print("you")


//func permutations(_ n:Int, _ a: inout Array<Character>) {
//    if n == 1 {print(a); return}
//    for i in 0..<n-1 {
//        permutations(n-1,&a)
//        a.swapAt(n-1, (n % 2 == 1) ? 0 : i)
//    }
//    permutations(n-1,&a)
//}


func permutation(length : Int, charArray: [Character]){
    var temp = charArray
    if length  == 1{
        print(charArray)
        return
    }
    for i in 0..<length - 1 {
        permutation(length: length - 1 , charArray: temp)
        temp.swapAt(length - 1, (length % 2 == 1) ? 0 : i)
    }
    permutation(length: length - 1, charArray: temp)
}

func permutation(_ A : [String]) -> [String]{
    var result = [String]()
    let numOfElements = A.count
    var index = 0
    var temp = ""
    for content in A{
        print(index)
        if (numOfElements - 1) == index{
            temp = temp + content
            print("content \(temp)")
            if result.contains(temp){
                //swap
            }else{
                //add to result
                result.append(temp)
            }
        }else{
            temp = temp + content
        }
        index = index + 1
    }
    
    return result
}




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
