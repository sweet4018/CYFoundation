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
	
}
