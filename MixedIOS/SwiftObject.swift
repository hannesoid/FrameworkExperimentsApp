//
//  SwiftObject.swift
//  Mixed
//
//  Created by Hannes Oud on 31.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

import Foundation

@objc public enum SwiftEnum: Int {
    case value1
    case value2
}

@objc
public final class SwiftObject: NSObject {

    // MARK: Works, when `MixedIOS.modulemap` is configured with umbrella header and non-explicit modules

    @objc public var publicObjCEnum: ObjCEnum = .value1
    @objc public var publicObjCStruct: ObjCStruct = .init(value: 3)

    // MARK: Works "Automatically"

    @objc public var publicObjCObject: ObjCObject? = ObjCObject()
    @objc public var publicSwiftEnum: SwiftEnum = .value1

    @objc var internalObjCObject: ObjCObject? = ObjCObject()
    @objc var internalObjCEnum: ObjCEnum = .value1
    @objc var internalObjCStruct: ObjCStruct = .init(value: 3)

    @objc public override init() { }

    @objc public static func printHello() {
        print("hello")
    }

    func inspectObjcProperties() {
        let objcObject = ObjCObject()
        _ = objcObject.objCEnum
        _ = objcObject.objCStruct
        _ = objcObject.objCStruct
    }
}
