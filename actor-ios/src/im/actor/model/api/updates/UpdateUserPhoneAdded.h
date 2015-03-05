//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateUserPhoneAdded.java
//

#ifndef _ImActorModelApiUpdatesUpdateUserPhoneAdded_H_
#define _ImActorModelApiUpdatesUpdateUserPhoneAdded_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateUserPhoneAdded_HEADER 87

@interface ImActorModelApiUpdatesUpdateUserPhoneAdded : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateUserPhoneAdded *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)phoneId;

- (instancetype)init;

- (jint)getUid;

- (jint)getPhoneId;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateUserPhoneAdded)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateUserPhoneAdded *ImActorModelApiUpdatesUpdateUserPhoneAdded_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateUserPhoneAdded, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateUserPhoneAdded)

#endif // _ImActorModelApiUpdatesUpdateUserPhoneAdded_H_
