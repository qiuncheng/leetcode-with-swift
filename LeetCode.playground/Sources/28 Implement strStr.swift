import Foundation

public class Solution28: NSObject {
    /// Recommend by me. 比如这种字符串的处理 --> 👩🏻‍🏫
    public func strStr2(_ haystack: String, _ needle: String) -> Int {
        let needleSequence = needle.sequences
        let needLength = needleSequence.count
        
        let haystackSequence = haystack.sequences
        let haystackLength = haystackSequence.count
        
        guard haystackLength >= needLength else {
                return -1
        }
        guard needLength != 0 else { return 0 }

        for i in 0 ... haystackLength - needLength {
            var substrings = String()
            
            for index in i ..< i + needLength {
                substrings.append(haystackSequence[index])
            }
            if substrings == needle {
                return i
            }
        }
        return -1
    }
    
    /// Accepted by LeetCode.com
    public func strStr(_ haystack: String, _ needle: String) -> Int {
        let needleSequence = Array(needle.characters)
        let needLength = needleSequence.count
        
        let haystackSequence = Array(haystack.characters)
        let haystackLength = haystackSequence.count
        
        guard haystackLength >= needLength else {
            return -1
        }
        guard needLength != 0 else { return 0 }
        
        for i in 0 ... haystackLength - needLength {
            var substrings = String()
            
            for index in i ..< i + needLength {
                substrings.append(haystackSequence[index])
            }
            if substrings == needle {
                return i
            }
        }
        return -1
    }
    
}
