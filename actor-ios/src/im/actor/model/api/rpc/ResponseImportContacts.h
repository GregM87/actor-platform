//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseImportContacts.java
//

#ifndef _ImActorModelApiRpcResponseImportContacts_H_
#define _ImActorModelApiRpcResponseImportContacts_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

#define ImActorModelApiRpcResponseImportContacts_HEADER 8

@interface ImActorModelApiRpcResponseImportContacts : ImActorModelNetworkParserResponse {
}

+ (ImActorModelApiRpcResponseImportContacts *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users
                             withInt:(jint)seq
                       withByteArray:(IOSByteArray *)state;

- (instancetype)init;

- (id<JavaUtilList>)getUsers;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseImportContacts)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcResponseImportContacts *ImActorModelApiRpcResponseImportContacts_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseImportContacts, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseImportContacts)

#endif // _ImActorModelApiRpcResponseImportContacts_H_
