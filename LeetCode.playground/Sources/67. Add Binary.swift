import Foundation

public class Solution67: NSObject {
  public func addBinary(_ a: String, _ b: String) -> String {
    if a == "" && b == "" { return "" }
    let aChars = a.characters.map({ String($0)})
    let bChars = b.characters.map({ String($0)})
    let maxLength = max(aChars.count, bChars.count)
    let aReversedChars = Array(aChars.reversed())
    let bReversedChars = Array(bChars.reversed())
    var result = String()
    var extra = 0
    let minLength = min(aChars.count, bChars.count)
    for index in 0 ..< minLength {
      let eachResult = extra + Int(aReversedChars[index])! + Int(bReversedChars[index])!
      result += "\(eachResult % 2)"
      extra = eachResult / 2
    }
    
    let maxLengthChars = aReversedChars.count > bReversedChars.count ? aReversedChars : bReversedChars
    for index in minLength ... maxLength {
      if index == maxLength {
        if extra != 0 {
          result += "\(extra)"
        }
      }
      else {
        let eachResult = Int(maxLengthChars[index])! + extra
        result += "\(eachResult % 2)"
        extra = eachResult / 2
      }
    }
    let array = result.characters
    return String(array.reversed())
  }
}
