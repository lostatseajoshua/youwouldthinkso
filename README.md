# You Would Think So (ywts)

That's not available in Swift?...you would think so (ywts)

# ywts

Swift is missing utility methods that provides convenience for built in types. This repo simply provides those missing convenience features through extensions to the language.

## Usage

## Collection Extensions

### non-fatal access to collection elements
```swift
let array = [1, 2, 3]
array[try: 0] // Optional(1)
array[safe: 0] // Optional(1) 
array[at: 0] // Optional(1)
array.element(at: 0) // Optional(1)
```

## Array Extensions

### Reduce array to dictionary
```swift
let dictionary = array.keyValueReduce {"\($0)"} // {"1": 1, "2": 2, "3": 3}
```

## Install

With [Swift Package Manager](https://swift.org/package-manager/)

```
// add to your dependncies in Package.swift

import PackageDescription

let package = Package(
    name: "YourProject",
    targets: [],
    dependencies: [
        // add this dependency
        .Package(url: "https://github.com/lostatseajoshua/youwouldthinkso-swift.git"),
    ]
)

> run swift build, swift test or swift package generate-xcodeproj
```

## License

This project is released under the [MIT license](https://github.com/lostatseajoshua/SwiftJSONType/blob/master/LICENSE).
