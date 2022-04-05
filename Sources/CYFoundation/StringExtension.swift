//
//  StringExtension.swift
//  
//
//  Created by ChenZheng-Yang on 2022/4/5.
//

import Foundation

public extension String {
	
	subscript (i: Int) -> Character {
		return self[index(startIndex, offsetBy: i)]
	}
	
	subscript (bounds: CountableRange<Int>) -> Substring {
		let start = index(startIndex, offsetBy: bounds.lowerBound)
		let end = index(startIndex, offsetBy: bounds.upperBound)
		if end < start { return "" }
		return self[start..<end]
	}
	
	subscript (bounds: CountableClosedRange<Int>) -> Substring {
		let start = index(startIndex, offsetBy: bounds.lowerBound)
		let end = index(startIndex, offsetBy: bounds.upperBound)
		if end < start { return "" }
		return self[start...end]
	}
	
	subscript (bounds: CountablePartialRangeFrom<Int>) -> Substring {
		let start = index(startIndex, offsetBy: bounds.lowerBound)
		let end = index(endIndex, offsetBy: -1)
		if end < start { return "" }
		return self[start...end]
	}
	
	subscript (bounds: PartialRangeThrough<Int>) -> Substring {
		let end = index(startIndex, offsetBy: bounds.upperBound)
		if end < startIndex { return "" }
		return self[startIndex...end]
	}
	
	subscript (bounds: PartialRangeUpTo<Int>) -> Substring {
		let end = index(startIndex, offsetBy: bounds.upperBound)
		if end < startIndex { return "" }
		return self[startIndex..<end]
	}
	
	var isNumeric: Bool {
		return CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: self))
	}
	
	func matches(_ expression: String) -> Bool {
		if let range = range(of: expression, options: .regularExpression, range: nil, locale: nil) {
			return range.lowerBound == startIndex && range.upperBound == endIndex
		} else {
			return false
		}
	}
	
	var isTaiwanID: Bool {
		return matches("^[a-z]{1}[1-2]{1}[0-9]{8}$")
	}
	
	var isValidEmail: Bool {
		return matches("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}")
	}
	
	mutating func insert(separator: String, every n: Int) {
		self = inserting(separator: separator, every: n)
	}
	
	func inserting(separator: String, every n: Int) -> String {
		var result: String = ""
		let characters = Array(self)
		stride(from: 0, to: count, by: n).forEach {
			result += String(characters[$0..<min($0+n, count)])
			if $0+n < count {
				result += separator
			}
		}
		return result
	}
	
}
