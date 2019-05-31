# Limitations of mixed Swift / ObjC Frameworks

## Components
- `MixedIOS`, a mixed framework, using a modulemap to expose ObjC things to Swift things within the framework.
- `FrameworkExperimentsApp`, an App target, which consumes the frameworks. Here things work more or less as expected.

## Issues
- In `MixedIOS` Swift cannot publicly expose usage of non-class types declared in ObjC
- In `MixedIOS` ObjC cannot access non-public (internal) `@objc` properties declared in Swift

## Instructions
- Clone repo
- Build
- Go to classes `ObjCObject` and `SwiftObject`
- Try to uncomment non-working code. Build and observe build errors
