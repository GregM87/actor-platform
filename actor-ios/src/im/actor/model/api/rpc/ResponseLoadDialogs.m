//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseLoadDialogs.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Dialog.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcResponseLoadDialogs () {
 @public
  id<JavaUtilList> groups_;
  id<JavaUtilList> users_;
  id<JavaUtilList> dialogs_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseLoadDialogs, groups_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseLoadDialogs, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseLoadDialogs, dialogs_, id<JavaUtilList>)

@implementation ImActorModelApiRpcResponseLoadDialogs

+ (ImActorModelApiRpcResponseLoadDialogs *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseLoadDialogs_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups
                    withJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)dialogs {
  if (self = [super init]) {
    self->groups_ = groups;
    self->users_ = users;
    self->dialogs_ = dialogs;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (id<JavaUtilList>)getGroups {
  return self->groups_;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (id<JavaUtilList>)getDialogs {
  return self->dialogs_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _groups = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_groups addWithId:[[ImActorModelApiGroup alloc] init]];
  }
  self->groups_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_groups];
  id<JavaUtilList> _users = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:2]; i++) {
    [_users addWithId:[[ImActorModelApiUser alloc] init]];
  }
  self->users_ = [values getRepeatedObjWithInt:2 withJavaUtilList:_users];
  id<JavaUtilList> _dialogs = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:3]; i++) {
    [_dialogs addWithId:[[ImActorModelApiDialog alloc] init]];
  }
  self->dialogs_ = [values getRepeatedObjWithInt:3 withJavaUtilList:_dialogs];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->groups_];
  [writer writeRepeatedObjWithInt:2 withJavaUtilList:self->users_];
  [writer writeRepeatedObjWithInt:3 withJavaUtilList:self->dialogs_];
}

- (NSString *)description {
  NSString *res = @"tuple LoadDialogs{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseLoadDialogs_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcResponseLoadDialogs *)other {
  [super copyAllFieldsTo:other];
  other->groups_ = groups_;
  other->users_ = users_;
  other->dialogs_ = dialogs_;
}

@end

ImActorModelApiRpcResponseLoadDialogs *ImActorModelApiRpcResponseLoadDialogs_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseLoadDialogs_init();
  return ((ImActorModelApiRpcResponseLoadDialogs *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcResponseLoadDialogs alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseLoadDialogs)
