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

// MARK: Works after changes in 6f5c8e8c (WWDC intervention)

- (ObjCEnum)swiftObject_publicObjCEnumValue {
    return [[SwiftObject alloc] init].publicObjCEnum;
}

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
