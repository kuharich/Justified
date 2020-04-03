//
//  main.swift
//  Justified
//
//  Created by Mark Kuharich on 4/3/20.
//  Copyright © 2020 Mark Kuharich. All rights reserved.
//

import Foundation

func justify(_ line: String, _ length: Int) -> String {
    
    // Original line must be less than the request length
    if line.count > length {
        return "error: requested length is less than original line"
    }
    
    // Handle if line and requested length are the same
    if line.count == length {
        return line
    }
    
    let words = line.split(separator: " ")
    
    let c = words.count - 1
    
    // Need at least two words (tokens) to justify)
    if c <= 0 {
        return "error: Must have at least 2 words"
    }
    
    var spacesLeftToAdd = length - line.count + c
    
    let spacesBetweenWords = spacesLeftToAdd / c
    //var spacesLeftToAdd = length - line.count + c
    
    var resultingLine = ""
    for i in 0 ..< words.count {
        var n = spacesBetweenWords
        if spacesLeftToAdd < spacesBetweenWords {
            n = spacesLeftToAdd
        }
        resultingLine += words[i] + String(repeating:" ", count: n)
        spacesLeftToAdd -= n
    }
    
    return resultingLine
}

// Test case: normal functional case
var result = justify("The quick brown fox jumps over the lazy dog.", 52)
print(result)

// Test case: normal functional case
var result0 = justify("The quick brown fox jumps over the lazy dog.", 53)
print(result0)

// Test case: requested length is less than original line
var result1 = justify("The quick brown fox jumps over the lazy dog.", 10)
print(result1)

// Test case: line and length are equal
var result2 = justify("0123456789", 10)
print(result2)

// Test case: empty string
var result3 = justify("", 10)
print(result3)

// Test case: edge case
var result4 = justify("a z", 52)
print(result4)

// Test case: one word
var result5 = justify("one", 52)
print(result5)

// Test case: edge case
var result6 = justify("01234567 9", 10)
print(result6)

// Test case: edge case
var result7 = justify("0 23456789", 10)
print(result7)
