import Foundation

public extension Array {
  public func nextElement(current index: Int) -> Element? {
    guard self.count > 0 else { return nil }
    if index == self.count - 1 {
      return self[0]
    }
    return self[index + 1]
  }
  public func nextIndex(current index: Int) -> Int {
    guard self.count > 0 else { return 0 }
    if index == self.count - 1 { return 0 }
    return index + 1
  }
}
