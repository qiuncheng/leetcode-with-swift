import Foundation

public extension String {
  public var sequences: [String] {
    var arr = [String]()
    enumerateSubstrings(in: startIndex..<endIndex, options: .byComposedCharacterSequences) { (substring, _, _, _) in
      if let str = substring { arr += [str] }
    }
    return arr
  }
}
