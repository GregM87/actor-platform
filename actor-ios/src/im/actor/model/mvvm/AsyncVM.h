//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/mvvm/AsyncVM.java
//

#ifndef _AMAsyncVM_H_
#define _AMAsyncVM_H_

#include "J2ObjC_header.h"
#include "java/lang/Runnable.h"

@interface AMAsyncVM : NSObject {
}

- (void)postWithId:(id)obj;

- (void)onObjectReceivedWithId:(id)obj;

- (void)detach;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(AMAsyncVM)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMAsyncVM ImActorModelMvvmAsyncVM;

J2OBJC_TYPE_LITERAL_HEADER(AMAsyncVM)

@interface AMAsyncVM_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithAMAsyncVM:(AMAsyncVM *)outer$
                           withId:(id)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(AMAsyncVM_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(AMAsyncVM_$1)

#endif // _AMAsyncVM_H_
