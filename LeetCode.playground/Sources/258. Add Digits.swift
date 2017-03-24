import Foundation

public class Solution258: NSObject {
    public func addDigits(_ num: Int) -> Int {
        return (num - 1) % 9 + 1
    }
}
