//
//  SwiftObject.swift
//  Mixed
//
//  Created by Hannes Oud on 31.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

import Foundation
import MixedIOS.ObjC

@objc
public final class SwiftObject: NSObject {

    @objc var objCObject: ObjCObject?
    @objc var objcEnum: ObjCEnum = .value1
    @objc var objCStruct: ObjCStruct = .init(value: 3)

    public override init() { }

    @objc public static func printHello() {
        print("hello")
    }
}
