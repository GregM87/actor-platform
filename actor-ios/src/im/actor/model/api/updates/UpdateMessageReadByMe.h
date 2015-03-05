//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateMessageReadByMe.java
//

#ifndef _ImActorModelApiUpdatesUpdateMessageReadByMe_H_
#define _ImActorModelApiUpdatesUpdateMessageReadByMe_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateMessageReadByMe_HEADER 50

@interface ImActorModelApiUpdatesUpdateMessageReadByMe : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateMessageReadByMe *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)startDate;

- (instancetype)init;

- (ImActorModelApiPeer *)getPeer;

- (jlong)getStartDate;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateMessageReadByMe)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateMessageReadByMe *ImActorModelApiUpdatesUpdateMessageReadByMe_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateMessageReadByMe, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateMessageReadByMe)

#endif // _ImActorModelApiUpdatesUpdateMessageReadByMe_H_
