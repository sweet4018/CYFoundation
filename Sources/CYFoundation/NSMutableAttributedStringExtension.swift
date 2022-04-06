//
//  NSMutableAttributedStringExtension.swift
//  
//
//  Created by ChenZheng-Yang on 2022/4/7.
//

#if os(iOS) || os(tvOS)
import UIKit

extension NSMutableAttributedString {

	enum ImageAlignments {
		case bounds(bounds: CGRect)
		case alignCenterToSingleLine(font: UIFont)
	}

	func appendImage(_ image: UIImage?, alignments: ImageAlignments) {
		guard let image = image else { return }
		let attachment = NSTextAttachment()
		attachment.image = image

		switch alignments {
		case .bounds(let bounds):
			attachment.bounds = bounds
		case .alignCenterToSingleLine(let font):
			attachment.bounds = CGRect(x: 0, y: (font.capHeight - image.size.height).rounded() / 2, width: image.size.width, height: image.size.height)
		}

		let imageText = NSAttributedString(attachment: attachment)
		self.append(imageText)
	}

}

#endif
