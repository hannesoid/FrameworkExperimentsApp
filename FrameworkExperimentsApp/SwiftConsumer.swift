//
//  SwiftConsumer.swift
//  FrameworkExperimentsApp
//
//  Created by Hannes Oud on 31.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

import Foundation
import MixedIOS
//import MixedIOS.ObjC // explicit import not needed

func testAccess() {

    // all access works as expected

    let swiftObject = SwiftObject()
    _ = swiftObject.publicObjCObject
    _ = swiftObject.publicSwiftEnum

    let objcObject = ObjCObject()
    _ = objcObject.objCEnum
    _ = objcObject.objCStruct
    _ = objcObject.swiftObject_publicObjCObject
    _ = objcObject.swiftObject

    // _ = swiftObject.internalObjCObject // no, because internal, this is ok
    // _ = swiftObject.internalSwiftEnum // no, because internal, this is ok
}
