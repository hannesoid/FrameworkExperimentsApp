//
//  ObjCObject.m
//  Mixed
//
//  Created by Hannes Oud on 31.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

#import "ObjCObject.h"
#import <MixedIOS/MixedIOS-Swift.h>

/// Unfortunately have to redefine the internal swift stuff (objc believes everything)
@interface SwiftObject()

@property (nonatomic, nullable) ObjCObject *internalObjCObject;
@property (readonly) ObjCEnum internalObjCEnum;

@end

@implementation ObjCObject

// MARK: Works after explicitly redeclaring the objc interface of `SwiftObject` as above

- (SwiftEnum)swiftEnum {
    return SwiftEnumValue1;
}

- (ObjCEnum)swiftObject_internalObjCEnumValue {
    return [[SwiftObject alloc] init].internalObjCEnum;
}

- (ObjCEnum)swiftObject_publicObjCEnumValue {
    return [[SwiftObject alloc] init].publicObjCEnum;
}

- (ObjCObject *)swiftObject_internalObjCObject {
    return [[SwiftObject alloc] init].internalObjCObject;
}

// MARK: Works "automatically"

- (SwiftObject *)swiftObject {
    return [[SwiftObject alloc] init];
}

- (ObjCObject *)swiftObject_publicObjCObject {
    return [[SwiftObject alloc] init].publicObjCObject;
}

- (void)printHelloViaSwift {
    [SwiftObject printHello];
}
@end
