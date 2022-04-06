# CYFoundation

## Useful extension

* Array
  * get(at:)
  * set(value:at:)
  * setting(value:at:)
  * uniqued()

* NSMutableAttributedString
  * appendImage(_:alignments:)
  
  you can do this ⬇️
  ```swift
  let attributedText = NSMutableAttributedString(string: "銀行帳號：235332666666")
  let font = UIFont.systemFont(forTextStyle: .callout)
  let image = UIImage(named: "copy")
  attributedText.appendImage(image, alignments: .alignCenterToSingleLine(font: font))
  yourLabel.attributedText = attributedText
  ```
  ![GITHUB]( https://serving.photos.photobox.com/10807783d23326ec86763b587bc502e330941ed258e5aed2c6aefee69c12dffd2be598c6.jpg "NSMutableAttributedString")

* NSObject
  * shortName
   
* String
  * subscript(i:)
  * subscript(bounds:)
  ```swift
  let string = "Hello, world"
  print(string[..<5]) // Hello
  print(string[7...]) // world
  print(string[0])    // H
  ```
  * matches(_:)
  * isNumeric
  * isTaiwanID
  * isValidEmail
  * insert(separator:every:)
  ```swift
  var cardNumber = "1234567890123456"
  cardNumber.insert(separator: " ", every: 4)
  print(cardNumber) // 1234 5678 9012 3456
  ```
  
* UIColor
  * init(hexRGB:alpha:)
  * init(hexRGB:)
  * init(hexRGBA:)

* UIDevice
  * modelName
  ```swift
  let modelName = UIDevice.modelName
  ```
  
* UIFont
  * systemFont(forTextStyle:compatibleWith:sizeMultiplier:sizeDelta:weight:)
  
* UILabel
  * height(withWidth:)
