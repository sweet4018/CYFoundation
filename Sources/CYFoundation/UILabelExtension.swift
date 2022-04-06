//
//  UILabelExtension.swift
//  
//
//  Created by ChenZheng-Yang on 2022/4/6.
//

#if os(iOS) || os(tvOS)
import UIKit

public extension UILabel {
	
	func height(withWidth width: CGFloat) -> CGFloat {
		let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
		label.font = self.font
		label.text = self.text
		label.lineBreakMode = self.lineBreakMode
		label.numberOfLines = self.numberOfLines
		label.sizeToFit()
		return label.frame.height
	}
	
}

#endif
