import Foundation

public class Solution: NSObject {
    public func strStr(_ haystack: String, _ needle: String) -> Int {
        let needleSequence = needle.sequences
        let needLength = needleSequence.count
        
        let haystackSequence = haystack.sequences
        let haystackLength = haystackSequence.count
        
        guard needLength > 0,
            haystackLength > 0,
            haystackLength >= needLength else {
                return -1
        }

        for i in 0 ... haystackLength - needLength {
            var substrings = String()
            
            for index in i ..< i + needLength {
                substrings.append(haystackSequence[index])
            }
            if substrings == needle {
                return i
            }
        }
        
        return -2
    }
}
