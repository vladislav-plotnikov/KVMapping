//
//  KVInnerObject.m
//  KVMappingExample
//
//  Created by Vladislav Plotnikov on 11/11/2018.
//  Copyright © 2018 Vladislav Plotnikov. All rights reserved.
//

#import "KVInnerObject.h"

@implementation KVInnerObject

- (NSArray<KVObject *> *)getMapArray {
    return @[[KVObject fromKeyPath:@"name"
                         toKeyPath:@"name"
                     expectedClass:NSString.class],
             [KVObject fromKeyPath:@"number"
                         toKeyPath:@"number"
                     expectedClass:NSNumber.class],
             [KVObject fromKeyPath:@"boolValue"
                         toKeyPath:@"boolValue"
                     expectedClass:NSNumber.class],
             [KVObject fromKeyPath:@"integerValue"
                         toKeyPath:@"integerValue"
                     expectedClass:NSNumber.class],
             [KVObject fromKeyPath:@"doubleValue"
                         toKeyPath:@"doubleValue"
                     expectedClass:NSNumber.class]];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@\nNumber: %@\nboolValue: %@\nintegerValue: %@\ndoubleValue: %@", _name, _number, @(_boolValue), @(_integerValue), @(_doubleValue)];
}

@end
