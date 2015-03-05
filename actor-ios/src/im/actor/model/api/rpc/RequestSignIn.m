//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSignIn.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSignIn.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSignIn () {
 @public
  jlong phoneNumber_;
  NSString *smsHash_;
  NSString *smsCode_;
  IOSByteArray *publicKey_;
  IOSByteArray *deviceHash_;
  NSString *deviceTitle_;
  jint appId_;
  NSString *appKey_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, smsHash_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, smsCode_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, publicKey_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, deviceHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, appKey_, NSString *)

@implementation ImActorModelApiRpcRequestSignIn

+ (ImActorModelApiRpcRequestSignIn *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSignIn_fromBytesWithByteArray_(data);
}

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
               withByteArray:(IOSByteArray *)publicKey
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey {
  if (self = [super init]) {
    self->phoneNumber_ = phoneNumber;
    self->smsHash_ = smsHash;
    self->smsCode_ = smsCode;
    self->publicKey_ = publicKey;
    self->deviceHash_ = deviceHash;
    self->deviceTitle_ = deviceTitle;
    self->appId_ = appId;
    self->appKey_ = appKey;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getPhoneNumber {
  return self->phoneNumber_;
}

- (NSString *)getSmsHash {
  return self->smsHash_;
}

- (NSString *)getSmsCode {
  return self->smsCode_;
}

- (IOSByteArray *)getPublicKey {
  return self->publicKey_;
}

- (IOSByteArray *)getDeviceHash {
  return self->deviceHash_;
}

- (NSString *)getDeviceTitle {
  return self->deviceTitle_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getAppKey {
  return self->appKey_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->phoneNumber_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->smsHash_ = [values getStringWithInt:2];
  self->smsCode_ = [values getStringWithInt:3];
  self->publicKey_ = [values getBytesWithInt:4];
  self->deviceHash_ = [values getBytesWithInt:5];
  self->deviceTitle_ = [values getStringWithInt:6];
  self->appId_ = [values getIntWithInt:7];
  self->appKey_ = [values getStringWithInt:8];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  if (self->smsHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:2 withNSString:self->smsHash_];
  if (self->smsCode_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:3 withNSString:self->smsCode_];
  if (self->publicKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:4 withByteArray:self->publicKey_];
  if (self->deviceHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:5 withByteArray:self->deviceHash_];
  if (self->deviceTitle_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:6 withNSString:self->deviceTitle_];
  [writer writeIntWithInt:7 withInt:self->appId_];
  if (self->appKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:8 withNSString:self->appKey_];
}

- (NSString *)description {
  NSString *res = @"rpc SignIn{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"publicKey=", BSUtils_byteArrayToStringCompactWithByteArray_(self->publicKey_)));
  res = JreStrcat("$$", res, JreStrcat("$$", @", deviceHash=", BSUtils_byteArrayToStringWithByteArray_(self->deviceHash_)));
  res = JreStrcat("$$", res, JreStrcat("$$", @", deviceTitle=", self->deviceTitle_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSignIn_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestSignIn *)other {
  [super copyAllFieldsTo:other];
  other->phoneNumber_ = phoneNumber_;
  other->smsHash_ = smsHash_;
  other->smsCode_ = smsCode_;
  other->publicKey_ = publicKey_;
  other->deviceHash_ = deviceHash_;
  other->deviceTitle_ = deviceTitle_;
  other->appId_ = appId_;
  other->appKey_ = appKey_;
}

@end

ImActorModelApiRpcRequestSignIn *ImActorModelApiRpcRequestSignIn_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSignIn_init();
  return ((ImActorModelApiRpcRequestSignIn *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestSignIn alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSignIn)
