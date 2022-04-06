//
//  UIColorExtension.swift
//  
//
//  Created by ChenZheng-Yang on 2022/4/6.
//

#if os(iOS) || os(tvOS)
import UIKit

public extension UIColor {
	
	convenience init(hexRGB: UInt, alpha: CGFloat) {
		var mutableHexRGB = hexRGB
		let blueUInt = mutableHexRGB & 0xff
		mutableHexRGB >>= 8
		let greenUInt = mutableHexRGB & 0xff
		mutableHexRGB >>= 8
		let redUInt = mutableHexRGB & 0xff
		self.init(red: CGFloat(redUInt) / 255, green: CGFloat(greenUInt) / 255, blue: CGFloat(blueUInt) / 255, alpha: alpha)
	}

	convenience init(hexRGB: UInt) {
		self.init(hexRGB: hexRGB, alpha: 1.0)
	}

	convenience init(hexRGBA: UInt) {
		let alphaUInt = hexRGBA & 0xff
		self.init(hexRGB: hexRGBA >> 8, alpha: CGFloat(alphaUInt) / 255)
	}

}
#endif
