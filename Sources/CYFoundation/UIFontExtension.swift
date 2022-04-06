//
//  UIFontExtension.swift
//
//
//  Created by ChenZheng-Yang on 2022/4/7.
//

#if os(iOS) || os(tvOS)
import UIKit

public extension UIFont {
	
	static func systemFont(
		forTextStyle style: UIFont.TextStyle,
		compatibleWith traitCollection: UITraitCollection? = nil,
		sizeMultiplier: CGFloat = 1,
		sizeDelta: CGFloat = 0,
		weight: UIFont.Weight? = nil
		) -> UIFont
	{
		let pointSize = preferredFont(forTextStyle: style, compatibleWith: traitCollection).pointSize
		if let weight = weight {
			return systemFont(ofSize: pointSize * sizeMultiplier + sizeDelta, weight: weight)
		} else {
			return systemFont(ofSize: pointSize * sizeMultiplier + sizeDelta)
		}
	}
	
}

#endif


