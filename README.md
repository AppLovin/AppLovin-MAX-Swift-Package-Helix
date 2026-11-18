# AppLovin MAX - iOS Helix Mediation Adapter

The AppLovin MAX Helix AdMob mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Helix
   ```
3. Select **Exact Version** and enter the encoded version (e.g. `13040000.0.0` for adapter version `13.4.0.0`).
4. Add the `AppLovinMediationHelixAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Helix.git",
        exact: "13040000.0.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`VoodooAdn`](https://github.com/VoodooADN/ios-sdk-swiftpackage) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://support.applovin.com/en/max/ios/overview/integration)
