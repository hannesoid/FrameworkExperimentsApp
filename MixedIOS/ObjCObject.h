//
//  ObjCObject.h
//  Mixed
//
//  Created by Hannes Oud on 31.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MixedIOS/MixedIOS-Swift.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, ObjCEnum) {
    ObjCEnumValue1 = 1,
    ObjCEnumValue2,
};

typedef struct {
    NSInteger value;
} ObjCStruct;

@interface ObjCObject : NSObject

- (void)printHelloViaSwift;

@end


NS_ASSUME_NONNULL_END
