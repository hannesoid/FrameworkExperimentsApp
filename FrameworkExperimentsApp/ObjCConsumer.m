//
//  ObjCConsumer.m
//  FrameworkExperimentsApp
//
//  Created by Hannes Oud on 31.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

#import "ObjCConsumer.h"
@import MixedIOS;

@implementation ObjCConsumer

// MARK: Doesn't Work

//- (ObjCEnum)swiftObject_publicObjCEnumValue {
//    return [[SwiftObject alloc] init].publicObjCEnum;
//}
//
//- (ObjCObject *)swiftObject_internalObjCObject {
//    return [[SwiftObject alloc] init].internalObjCObject;
//}

// MARK: Works

- (SwiftEnum)swiftEnum {
    return SwiftEnumValue1;
}

- (SwiftObject *)swiftObject {
    return [[SwiftObject alloc] init];
}

- (ObjCObject *)swiftObject_publicObjCObject {
    return [[SwiftObject alloc] init].publicObjCObject;
}

- (ObjCEnum )objCEnum {
    return ObjCEnumValue1;
}

- (ObjCObject *)objcObject {
    return [[ObjCObject alloc] init];
}

- (ObjCStruct)objCStruct {
    ObjCStruct bla = { 1 };
    return bla;
}


@end
