//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSearchContacts.java
//

#ifndef _ImActorModelApiRpcRequestSearchContacts_H_
#define _ImActorModelApiRpcRequestSearchContacts_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestSearchContacts_HEADER 112

@interface ImActorModelApiRpcRequestSearchContacts : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestSearchContacts *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithNSString:(NSString *)request;

- (instancetype)init;

- (NSString *)getRequest;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestSearchContacts)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestSearchContacts *ImActorModelApiRpcRequestSearchContacts_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestSearchContacts, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestSearchContacts)

#endif // _ImActorModelApiRpcRequestSearchContacts_H_
