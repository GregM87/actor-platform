//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/EmailToImport.java
//

#ifndef _ImActorModelApiEmailToImport_H_
#define _ImActorModelApiEmailToImport_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiEmailToImport : BSBserObject {
}

- (instancetype)initWithNSString:(NSString *)email
                    withNSString:(NSString *)name;

- (instancetype)init;

- (NSString *)getEmail;

- (NSString *)getName;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiEmailToImport)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiEmailToImport)

#endif // _ImActorModelApiEmailToImport_H_
