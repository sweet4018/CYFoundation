# CYFoundation

## Useful extension

* Array
  * get(at:)
  * set(value:at:)
  * setting(value:at:)
  * uniqued()

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
  
* UILabel
  * height(withWidth:)
