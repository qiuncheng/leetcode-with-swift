import Foundation

public class Solution503: NSObject {
  public func nextGreaterElements2(_ nums: [Int]) -> [Int] {
    if nums.count == 0 { return [] }
    if nums.count == 1 { return [-1] }
    var result = [Int]()
    for index in 0 ..< nums.count {
      for big in index+1 ..< index + nums.count + 1 {
        if big % nums.count == index {
          result.append(-1)
          break
        }
        if nums[big % nums.count] > nums[index] {
          result.append(nums[big % nums.count])
          break
        }
      }
    }
    return result
  }
  
  public func nextGreaterElements(_ nums: [Int]) -> [Int] {
    if nums.count == 0 { return [] }
    if nums.count == 1 { return [-1] }
    var result = [Int]()
    for index in 0 ..< nums.count * 2 {
      var next = index + 1
      while next < next + nums.count {
        if nums[next % nums.count] > nums[index % nums.count] {
          result.append(nums[next % nums.count])
          break
        }
        next += 1
      }
      if index % nums.count == index && index > nums.count {
        result.append(-1)
      }
      
    }
    return result
  }
}
