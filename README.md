# CloudX Pangle adapter Swift package

This repository distributes the Pangle adapter for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 16 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-pangle.git
```

Select an exact package version from the compatibility table. Add the
`CloudXPangleAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the CloudX registration code.

| Package version | CloudX adapter | Pangle SDK |
| --- | --- | --- |
| `8030009.0.0` | `8.3.0.9.0` | `8.3.0.9` |

The package installs CloudX Core and Pangle SDK as dependencies. Import `CloudXCore` in the application. The adapter registers when the application loads.

## Versioning

CloudX adapter versions have five components here, because the network SDK has four. Swift package versions use three. The package major joins the network SDK components, and the minor is the adapter revision. For example, adapter `8.3.0.9.0` uses package version `8030009.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
