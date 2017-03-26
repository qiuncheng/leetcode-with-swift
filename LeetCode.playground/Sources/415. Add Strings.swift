//
//  415. Add Strings.swift
//  LeetCodeTest
//
//  Created by yolo on 2017/3/27.
//  Copyright © 2017年 Qiun Cheng. All rights reserved.
//

import Cocoa

public class Solution415: NSObject {
    public func addStrings(_ num1: String, _ num2: String) -> String {
        if num1 == "" {
            return num2
        }
        if num2 == "" {
            return num1
        }
        var result = [Int]()
        let num1Chars = num1.characters.map({ String($0) })
        let num2Chars = num2.characters.map({ String($0) })
        let maxLength = max(num1Chars.count, num2Chars.count)
        let minLength = min(num1Chars.count, num2Chars.count)
        let num1ReversedChars = Array(num1Chars.reversed())
        let num2ReversedChars = Array(num2Chars.reversed())
        var extra = 0
        for i in 0 ..< minLength {
            let temp = extra + Int(num1ReversedChars[i])! + Int(num2ReversedChars[i])!
            result.append(temp % 10)
            extra = temp / 10
        }
        let maxReversedChars = num1ReversedChars.count > num2ReversedChars.count ? num1ReversedChars : num2ReversedChars
        for index in minLength ... maxLength {
            if index == maxLength {
                if extra == 1 {
                    result.append(extra)
                }
            }
            else {
                let temp = extra + Int(maxReversedChars[index])!
                result.append(temp % 10)
                extra = temp / 10
            }
        }
        var resultStr = String()
        for i in result.reversed() {
            resultStr.append(String(i))
        }
        return resultStr
    }
}
