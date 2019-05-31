//
//  ObjCConsumer.h
//  FrameworkExperimentsApp
//
//  Created by Hannes Oud on 31.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
@import MixedIOS;
@import MixedIOS.ObjC; // Explicit Import needed

NS_ASSUME_NONNULL_BEGIN

@interface ObjCConsumer : NSObject

// MARK: Doesn't work

@property (nonatomic, readonly) ObjCEnum swiftObject_publicObjCEnumValue;
@property (nonatomic, readonly) ObjCObject * swiftObject_internalObjCObject;

// MARK: Work

@property (nonatomic, readonly) ObjCEnum objCEnum;
@property (nonatomic, readonly) ObjCObject *objcObject;
@property (nonatomic, readonly) ObjCStruct objCStruct;
@property (nonatomic, readonly) SwiftEnum swiftEnum;
@property (nonatomic, readonly) SwiftObject *swiftObject;


@end

NS_ASSUME_NONNULL_END
