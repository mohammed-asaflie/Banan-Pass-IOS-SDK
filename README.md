# Banan-Pass-IOS-SDK

## Installation

BananPass is available through CocoaPods. To install it, simply add the following lines to your Podfile:


```bash
pod 'BananPass'
```

## Usage

```swift
import BananPass

let bananController = BananPass.startSDK(accessToken: token) { (token, error) in
    // result callback
}
self.present(bananController, animated: true, completion: nil)
```

##
#### Copyright 2021 Banan. All rights reserved.
