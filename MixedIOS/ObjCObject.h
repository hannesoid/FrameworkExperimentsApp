//
//  ObjCObject.h
//  Mixed
//
//  Created by Hannes Oud on 31.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <MixedIOS/MixedIOS-Swift.h> // leads to warning with cyclical dependencies.

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, ObjCEnum) {
    ObjCEnumValue1 = 1,
    ObjCEnumValue2,
};

typedef struct {
    NSInteger value;
} ObjCStruct;

@class SwiftObject;

@interface ObjCObject : NSObject

// MARK: Doesn't work

//@property (readonly) SwiftEnum swiftEnum; // Can we use `SwiftEnum` here somehow?
//@property (nonatomic) SwiftEnum swiftObject_publicSwiftEnumValue;
//@property (readonly) ObjCEnum swiftObject_internalObjCEnumValue; // Can we access properties of Swift Object here somehow?
//@property (readonly) ObjCEnum swiftObject_publicObjCEnumValue; // Can we access properties of Swift Object here somehow?
//@property (nonatomic, nullable) ObjCObject *swiftObject_internalObjCObject;


// MARK: Works

@property (nonatomic) ObjCEnum objCEnum;
@property (nonatomic) ObjCStruct objCStruct;
@property (nonatomic, nullable) SwiftObject *swiftObject NS_SWIFT_NAME(swiftObject);
@property (nonatomic, nullable) ObjCObject *swiftObject_publicObjCObject NS_SWIFT_NAME(swiftObject_publicObjCObject);

- (void)printHelloViaSwift;

@end

NS_ASSUME_NONNULL_END
