//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/ServiceGroupUserKicked.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/ServiceGroupUserKicked.h"
#include "java/io/IOException.h"

@interface AMServiceGroupUserKicked () {
 @public
  jint kickedUid_;
}
- (instancetype)init;
@end

@implementation AMServiceGroupUserKicked

+ (AMServiceGroupUserKicked *)fromBytesWithByteArray:(IOSByteArray *)data {
  return AMServiceGroupUserKicked_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)kickedUid {
  if (self = [super initWithNSString:@"User kicked"]) {
    self->kickedUid_ = kickedUid;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getKickedUid {
  return kickedUid_;
}

- (AMAbsContent_ContentTypeEnum *)getContentType {
  return AMAbsContent_ContentTypeEnum_get_SERVICE_KICKED();
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  [super parseWithBSBserValues:values];
  kickedUid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:10];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [super serializeWithBSBserWriter:writer];
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:10 withInt:kickedUid_];
}

- (void)copyAllFieldsTo:(AMServiceGroupUserKicked *)other {
  [super copyAllFieldsTo:other];
  other->kickedUid_ = kickedUid_;
}

@end

AMServiceGroupUserKicked *AMServiceGroupUserKicked_fromBytesWithByteArray_(IOSByteArray *data) {
  AMServiceGroupUserKicked_init();
  return ((AMServiceGroupUserKicked *) BSBser_parseWithBSBserObject_withByteArray_([[AMServiceGroupUserKicked alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMServiceGroupUserKicked)
