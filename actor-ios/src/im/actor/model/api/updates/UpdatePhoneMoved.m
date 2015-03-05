//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdatePhoneMoved.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdatePhoneMoved.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdatePhoneMoved () {
 @public
  jint phoneId_;
  jint uid_;
}
@end

@implementation ImActorModelApiUpdatesUpdatePhoneMoved

+ (ImActorModelApiUpdatesUpdatePhoneMoved *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdatePhoneMoved_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)phoneId
                    withInt:(jint)uid {
  if (self = [super init]) {
    self->phoneId_ = phoneId;
    self->uid_ = uid;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getPhoneId {
  return self->phoneId_;
}

- (jint)getUid {
  return self->uid_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->phoneId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->uid_ = [values getIntWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->phoneId_];
  [writer writeIntWithInt:2 withInt:self->uid_];
}

- (NSString *)description {
  NSString *res = @"update PhoneMoved{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"phoneId=", self->phoneId_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", uid=", self->uid_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdatePhoneMoved_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdatePhoneMoved *)other {
  [super copyAllFieldsTo:other];
  other->phoneId_ = phoneId_;
  other->uid_ = uid_;
}

@end

ImActorModelApiUpdatesUpdatePhoneMoved *ImActorModelApiUpdatesUpdatePhoneMoved_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdatePhoneMoved_init();
  return ((ImActorModelApiUpdatesUpdatePhoneMoved *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdatePhoneMoved alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdatePhoneMoved)
