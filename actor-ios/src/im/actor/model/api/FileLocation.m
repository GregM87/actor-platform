//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/FileLocation.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiFileLocation () {
 @public
  jlong fileId_;
  jlong accessHash_;
}
@end

@implementation ImActorModelApiFileLocation

- (instancetype)initWithLong:(jlong)fileId
                    withLong:(jlong)accessHash {
  if (self = [super init]) {
    self->fileId_ = fileId;
    self->accessHash_ = accessHash;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getFileId {
  return self->fileId_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->fileId_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->fileId_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
}

- (NSString *)description {
  NSString *res = @"struct FileLocation{";
  res = JreStrcat("$$", res, JreStrcat("$J", @"fileId=", self->fileId_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiFileLocation *)other {
  [super copyAllFieldsTo:other];
  other->fileId_ = fileId_;
  other->accessHash_ = accessHash_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiFileLocation)
