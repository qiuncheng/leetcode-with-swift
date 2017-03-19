import Foundation

public class Solution15: NSObject {
  public func threeSum(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    if nums.count <= 2 {
      return result
    }
    let sortedNums = nums.sorted { $0 < $1 }
    for x in 0 ..< sortedNums.count - 2 {
      
      let currentNum = sortedNums[x]
      if x > 0 && sortedNums[x] == sortedNums[x - 1] {
        continue
      }
      var leftIndex = x + 1
      var rightIndex = sortedNums.count - 1
      while leftIndex < rightIndex {
        let toBeTarget = currentNum + sortedNums[leftIndex] + sortedNums[rightIndex]
        if 0 == toBeTarget {
          let target = [currentNum, sortedNums[leftIndex], sortedNums[rightIndex]]
          result.append(target)
          
          repeat {
            leftIndex += 1
          } while leftIndex < rightIndex && sortedNums[leftIndex] == sortedNums[leftIndex - 1]
          repeat {
            rightIndex -= 1
          } while leftIndex < rightIndex && sortedNums[rightIndex] == sortedNums[rightIndex + 1]
        }
        else if 0 > toBeTarget {
          repeat {
            leftIndex += 1
          } while leftIndex < rightIndex && sortedNums[leftIndex] == sortedNums[leftIndex - 1]
        }
        else {
          repeat {
            rightIndex -= 1
          } while leftIndex < rightIndex && sortedNums[rightIndex] == sortedNums[rightIndex + 1]
        }
      }
    }
    
    return result
  }
}
