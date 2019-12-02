# Mixed Swift / ObjC Frameworks

This is an example project, that shows how you can create an iOS `.framework` that mixes swift with ObjC, and each of them may reference eachother within the framework.

## Components
- `MixedIOS`, a mixed framework, using a modulemap to expose things between ObjC and Swift within the framework.
- `FrameworkExperimentsApp`, an App target, which consumes the frameworks.

## Potential issues without special preparations
- In `MixedIOS` Swift cannot publicly expose usage of non-class types declared in ObjC
- In `MixedIOS` ObjC cannot access non-public (internal) `@objc` properties declared in Swift

## Special Preparations

Easiest is to look around in the sample project.

### You need a `.modulemap` file and set it as modulemap in build settings

### Best is to set ObjC headers to `private` (not `project`)

### Declare the umbrella header (with name of your framework) in `.modulemap`
This will enable using ObjC from Swift within the framework

### Include all ObjC headers in umbrella header or modulemap
- either add it as `header "MyObjCHeader.h"` in `.modulemap`
- or (only works if you set it to `private` target membership)  `#import` it in your umbrella header

### Redefine your Swift `@objc` elements in ObjC.
 Yup - necessary, if you want to use them from ObjC within the framework.
 
 ## Related
-  https://jsorge.net/2019/01/23/mixed-language-framework
