//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/messages/entity/EntityConverter.java
//

#ifndef _ImActorModelModulesMessagesEntityEntityConverter_H_
#define _ImActorModelModulesMessagesEntityEntityConverter_H_

@class AMAbsContent;
@class AMAvatar;
@class AMAvatarImage;
@class AMFastThumb;
@class AMFileLocation;
@class AMGroup;
@class AMMessageStateEnum;
@class AMPeer;
@class AMPeerTypeEnum;
@class AMSexEnum;
@class AMUser;
@class ImActorModelApiAvatar;
@class ImActorModelApiAvatarImage;
@class ImActorModelApiFastThumb;
@class ImActorModelApiFileLocation;
@class ImActorModelApiGroup;
@class ImActorModelApiMessageContent;
@class ImActorModelApiMessageStateEnum;
@class ImActorModelApiPeer;
@class ImActorModelApiPeerTypeEnum;
@class ImActorModelApiSexEnum;
@class ImActorModelApiUser;
@class JavaUtilArrayList;
@protocol JavaUtilList;

#include "J2ObjC_header.h"

@interface ImActorModelModulesMessagesEntityEntityConverter : NSObject {
}

+ (AMMessageStateEnum *)convertWithImActorModelApiMessageStateEnum:(ImActorModelApiMessageStateEnum *)state;

+ (AMAvatar *)convertWithImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar;

+ (AMAvatarImage *)convertWithImActorModelApiAvatarImage:(ImActorModelApiAvatarImage *)avatarImage;

+ (AMFileLocation *)convertWithImActorModelApiFileLocation:(ImActorModelApiFileLocation *)location
                                              withNSString:(NSString *)fileName
                                                   withInt:(jint)size;

+ (AMSexEnum *)convertWithImActorModelApiSexEnum:(ImActorModelApiSexEnum *)sex;

+ (AMUser *)convertWithImActorModelApiUser:(ImActorModelApiUser *)user;

+ (AMGroup *)convertWithImActorModelApiGroup:(ImActorModelApiGroup *)group;

+ (JavaUtilArrayList *)convertWithJavaUtilList:(id<JavaUtilList>)members
                                       withInt:(jint)admin;

+ (AMPeerTypeEnum *)convertWithImActorModelApiPeerTypeEnum:(ImActorModelApiPeerTypeEnum *)peerType;

+ (AMPeer *)convertWithImActorModelApiPeer:(ImActorModelApiPeer *)peer;

+ (AMAbsContent *)convertWithImActorModelApiMessageContent:(ImActorModelApiMessageContent *)content;

+ (AMFastThumb *)convertWithImActorModelApiFastThumb:(ImActorModelApiFastThumb *)fastThumb;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesEntityEntityConverter)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT AMMessageStateEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessageStateEnum_(ImActorModelApiMessageStateEnum *state);

FOUNDATION_EXPORT AMAvatar *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_(ImActorModelApiAvatar *avatar);

FOUNDATION_EXPORT AMAvatarImage *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_(ImActorModelApiAvatarImage *avatarImage);

FOUNDATION_EXPORT AMFileLocation *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFileLocation_withNSString_withInt_(ImActorModelApiFileLocation *location, NSString *fileName, jint size);

FOUNDATION_EXPORT AMSexEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiSexEnum_(ImActorModelApiSexEnum *sex);

FOUNDATION_EXPORT AMUser *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(ImActorModelApiUser *user);

FOUNDATION_EXPORT AMGroup *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiGroup_(ImActorModelApiGroup *group);

FOUNDATION_EXPORT JavaUtilArrayList *ImActorModelModulesMessagesEntityEntityConverter_convertWithJavaUtilList_withInt_(id<JavaUtilList> members, jint admin);

FOUNDATION_EXPORT AMPeerTypeEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeerTypeEnum_(ImActorModelApiPeerTypeEnum *peerType);

FOUNDATION_EXPORT AMPeer *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(ImActorModelApiPeer *peer);

FOUNDATION_EXPORT AMAbsContent *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessageContent_(ImActorModelApiMessageContent *content);

FOUNDATION_EXPORT AMFastThumb *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFastThumb_(ImActorModelApiFastThumb *fastThumb);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesEntityEntityConverter)

#endif // _ImActorModelModulesMessagesEntityEntityConverter_H_
