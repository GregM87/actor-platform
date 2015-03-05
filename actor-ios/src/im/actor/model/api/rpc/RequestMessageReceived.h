//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestMessageReceived.java
//

#ifndef _ImActorModelApiRpcRequestMessageReceived_H_
#define _ImActorModelApiRpcRequestMessageReceived_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiOutPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestMessageReceived_HEADER 55

@interface ImActorModelApiRpcRequestMessageReceived : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestMessageReceived *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                                      withLong:(jlong)date;

- (instancetype)init;

- (ImActorModelApiOutPeer *)getPeer;

- (jlong)getDate;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestMessageReceived)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestMessageReceived *ImActorModelApiRpcRequestMessageReceived_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestMessageReceived, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestMessageReceived)

#endif // _ImActorModelApiRpcRequestMessageReceived_H_
