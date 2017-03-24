//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

//let solution = Solution28()
//solution.strStr("👨🏿‍🎓👩🏻‍🏫👩🏻‍🏫", "👩🏻‍🏫")
//solution.strStr2("👨🏿‍🎓👩🏻‍🏫👩🏻‍🏫", "👩🏻‍🏫")
var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

let solution15 = Solution15()
print([-4,-2,-2,-2,0,1,2,2,2,3,3,4,4,6,6].sorted())
print(solution15.threeSum([-4,-2,-2,-2,0,1,2,2,2,3,3,4,4,6,6]))
solution15.threeSum([-1,0,1,2,-1,-4,-1])
solution15.threeSum([0,0,0])
//"👨🏿‍🎓👩🏻‍🏫👩🏻‍🏫".sequences.count

let sol = Solution67()
sol.addBinary("111", "1111")

let sol258 = Solution258()
sol258.addDigits(12345)
