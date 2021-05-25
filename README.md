# SwiftySVGAPlayer

[![Version](https://img.shields.io/cocoapods/v/SwiftySVGAPlayer.svg?style=flat)](https://cocoapods.org/pods/SwiftySVGAPlayer)
[![License](https://img.shields.io/cocoapods/l/SwiftySVGAPlayer.svg?style=flat)](https://github.com/janlionly/SwiftySVGAPlayer/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/SwiftySVGAPlayer.svg?style=flat)](https://github.com/janlionly/SwiftySVGAPlayer)
![Swift](https://img.shields.io/badge/%20in-swift%205.1-orange.svg)


## Description
**SwiftySVGAPlayer** is a high level APIs based on [SVGAPlayer](https://github.com/yyued/SVGAPlayer-iOS), which support play svga according url or local svga data, default push svga in FIFO queue, and then pop to play, and you can set isInstant true for cancel the queue.


## Installation

### CocoaPods

```ruby
pod 'SwiftySVGAPlayer', '1.4.5'
```

## Usage
just one line code to play svga:(Please run on iOS device)

```swift
// for example in a controller:
SwiftySVGAPlayer().pushToPlay(svga: "https://xxx/filename.svga", on: self.view)

// Warning: Playing a svga maybe slow for the first time, you could batch cache svgas in some place like after app launch or log in before play them
SwiftySVGAPlayer().cache(svga: "https://xxx/filename.svga")


// Optional: ----------------------------------------------------
// detail properties and methods
/// Whether user interaction enabled when play svga
public var isUserInteractionEnabled: Bool

/// Whether add shadow mask when play svga
public var isMask: Bool

/// Whether play a single svga forever
public var isInfinite: Bool

/// Add svga urlstring or svgadata's base64string to FIFO queue and pop to play
open func play(svga urlString: String, on view: UIView, isInstant: Bool = false, scale: CGFloat = 1)

/// prepare to cache for svga url
public func cache(svga urlString: String, failure: ((Error) -> Void)? = nil)

/// reset player to inital state
open func clear()

/// other methods for example pause/stop/play and so on, please see the demo in rep

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

**SwiftySVGAPlayer** is available under the Apache 2.0 license. See the [LICENSE](https://github.com/janlionly/SwiftySVGAPlayer/blob/master/LICENSE) file for more info.