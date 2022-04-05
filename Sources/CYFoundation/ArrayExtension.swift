//
//  ArrayExtension.swift
//  
//
//  Created by ChenZheng-Yang on 2022/4/5.
//

import Foundation

public extension Array {
	
	func get(at index: Int) -> Element? {
		guard !self.isEmpty,
			  self.count > index else {
			  return nil
		  }
		return self[index]
	}
	
	mutating func set(value: Element, at index: Int) {
		guard !self.isEmpty,
			self.count > index else {
			return
		}
		self[index] = value
	}
	
	func setting(value: Element, at index: Int) -> Array {
		var result = self
		guard !self.isEmpty,
			self.count > index else {
			return result
		}
		result[index] = value
		return result
	}

}

public extension Array where Element: Hashable {
	
	func uniqued() -> Array {
		var buffer = Array()
		var added = Set<Element>()
		for elem in self {
			if !added.contains(elem) {
				buffer.append(elem)
				added.insert(elem)
			}
		}
		return buffer
	}
	
}
