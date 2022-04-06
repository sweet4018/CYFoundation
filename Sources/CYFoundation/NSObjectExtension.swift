//
//  NSObjectExtension.swift
//  
//
//  Created by ChenZheng-Yang on 2022/4/6.
//

import Foundation

extension NSObject {

	/**
	Only the `ClassName` part of `ModuleName.ClassName` i.e. no `ModuleName`.
	- Note:
	`fileprivate` classes have more complex short names.
	*/
	class var shortName: String {
		return String(describing: self)
	}
}
