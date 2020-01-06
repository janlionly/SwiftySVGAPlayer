# SwiftySVGAPlayer

[![Version](https://img.shields.io/cocoapods/v/SwiftySVGAPlayer.svg?style=flat)](https://cocoapods.org/pods/SwiftySVGAPlayer)
[![License](https://img.shields.io/cocoapods/l/SwiftySVGAPlayer.svg?style=flat)](https://github.com/janlionly/SwiftySVGAPlayer/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/SwiftySVGAPlayer.svg?style=flat)](https://github.com/janlionly/SwiftySVGAPlayer)
![Swift](https://img.shields.io/badge/%20in-swift%205.1-orange.svg)


## Description
**SwiftySVGAPlayer** is a high level APIs based on [SVGAPlayer](https://github.com/yyued/SVGAPlayer-iOS).


## Installation

### CocoaPods

```ruby
pod 'SwiftySVGAPlayer'
```

## Usage
just one line code to play svga:

```swift
// for example in a controller:
SwiftySVGAPlayer().play(svga: "https://xxx/filename.svga", on: self.view)

// Optional: ----------------------------------------------------
// other properties and methods
    /// Whether user interaction enabled when play svga
    public var isUserInteractionEnabled: Bool

    /// Whether add shadow mask when play svga
    public var isMask: Bool

    /// Whether play a single svga forever
    public var isInfinite: Bool

	/// prepare to cache for svga url
	public func cache(svga urlString: String, failure: ((Error) -> Void)? = nil)

	/// reset player to inital state
    open func clear()

```



## Requirements

- iOS 9.0+
- Swift 4.2 to 5.1

## Author

Visit my github: [janlionly](https://github.com/janlionly)<br>
Contact with me by email: janlionly@gmail.com

## Contribute

I would love you to contribute to **SwiftySVGAPlayer**

## License

**SwiftySVGAPlayer** is available under the MIT license. See the [LICENSE](https://github.com/janlionly/SwiftySVGAPlayer/blob/master/LICENSE) file for more info.
