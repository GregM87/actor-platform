//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSendAuthCode.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSendAuthCode.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSendAuthCode () {
 @public
  jlong phoneNumber_;
  jint appId_;
  NSString *apiKey_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSendAuthCode, apiKey_, NSString *)

@implementation ImActorModelApiRpcRequestSendAuthCode

+ (ImActorModelApiRpcRequestSendAuthCode *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSendAuthCode_fromBytesWithByteArray_(data);
}

- (instancetype)initWithLong:(jlong)phoneNumber
                     withInt:(jint)appId
                withNSString:(NSString *)apiKey {
  if (self = [super init]) {
    self->phoneNumber_ = phoneNumber;
    self->appId_ = appId;
    self->apiKey_ = apiKey;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getPhoneNumber {
  return self->phoneNumber_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getApiKey {
  return self->apiKey_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->phoneNumber_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->appId_ = [values getIntWithInt:2];
  self->apiKey_ = [values getStringWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  [writer writeIntWithInt:2 withInt:self->appId_];
  if (self->apiKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:3 withNSString:self->apiKey_];
}

- (NSString *)description {
  NSString *res = @"rpc SendAuthCode{";
  res = JreStrcat("$$", res, JreStrcat("$J", @"phoneNumber=", self->phoneNumber_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSendAuthCode_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestSendAuthCode *)other {
  [super copyAllFieldsTo:other];
  other->phoneNumber_ = phoneNumber_;
  other->appId_ = appId_;
  other->apiKey_ = apiKey_;
}

@end

ImActorModelApiRpcRequestSendAuthCode *ImActorModelApiRpcRequestSendAuthCode_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSendAuthCode_init();
  return ((ImActorModelApiRpcRequestSendAuthCode *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestSendAuthCode alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSendAuthCode)
