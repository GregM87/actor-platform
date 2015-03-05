//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateMessageSent.java
//

#ifndef _ImActorModelApiUpdatesUpdateMessageSent_H_
#define _ImActorModelApiUpdatesUpdateMessageSent_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateMessageSent_HEADER 4

@interface ImActorModelApiUpdatesUpdateMessageSent : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateMessageSent *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)rid
                                   withLong:(jlong)date;

- (instancetype)init;

- (ImActorModelApiPeer *)getPeer;

- (jlong)getRid;

- (jlong)getDate;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateMessageSent)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateMessageSent *ImActorModelApiUpdatesUpdateMessageSent_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateMessageSent, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateMessageSent)

#endif // _ImActorModelApiUpdatesUpdateMessageSent_H_
