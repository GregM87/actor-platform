//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/bouncycastle/crypto/digest/GeneralDigest.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/bouncycastle/crypto/digest/GeneralDigest.h"
#include "im/actor/model/crypto/bouncycastle/utils/Pack.h"
#include "java/lang/System.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest () {
 @public
  IOSByteArray *xBuf_;
  jint xBufOff_;
  jlong byteCount_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest, xBuf_, IOSByteArray *)

@implementation ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest

- (instancetype)init {
  if (self = [super init]) {
    xBuf_ = [IOSByteArray newArrayWithLength:4];
    xBufOff_ = 0;
  }
  return self;
}

- (instancetype)initWithImActorModelCryptoBouncycastleCryptoDigestGeneralDigest:(ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest *)t {
  if (self = [super init]) {
    xBuf_ = [IOSByteArray newArrayWithLength:4];
    [self copyInWithImActorModelCryptoBouncycastleCryptoDigestGeneralDigest:t];
  }
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)encodedState {
  if (self = [super init]) {
    xBuf_ = [IOSByteArray newArrayWithLength:4];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(encodedState, 0, xBuf_, 0, xBuf_->size_);
    xBufOff_ = ImActorModelCryptoBouncycastleUtilsPack_bigEndianToIntWithByteArray_withInt_(encodedState, 4);
    byteCount_ = ImActorModelCryptoBouncycastleUtilsPack_bigEndianToLongWithByteArray_withInt_(encodedState, 8);
  }
  return self;
}

- (void)copyInWithImActorModelCryptoBouncycastleCryptoDigestGeneralDigest:(ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest *)t {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(((ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest *) nil_chk(t))->xBuf_, 0, xBuf_, 0, ((IOSByteArray *) nil_chk(t->xBuf_))->size_);
  xBufOff_ = t->xBufOff_;
  byteCount_ = t->byteCount_;
}

- (void)updateWithByte:(jbyte)inArg {
  *IOSByteArray_GetRef(nil_chk(xBuf_), xBufOff_++) = inArg;
  if (xBufOff_ == xBuf_->size_) {
    [self processWordWithByteArray:xBuf_ withInt:0];
    xBufOff_ = 0;
  }
  byteCount_++;
}

- (void)updateWithByteArray:(IOSByteArray *)inArg
                    withInt:(jint)inOff
                    withInt:(jint)len {
  while ((xBufOff_ != 0) && (len > 0)) {
    [self updateWithByte:IOSByteArray_Get(nil_chk(inArg), inOff)];
    inOff++;
    len--;
  }
  while (len > ((IOSByteArray *) nil_chk(xBuf_))->size_) {
    [self processWordWithByteArray:inArg withInt:inOff];
    inOff += xBuf_->size_;
    len -= xBuf_->size_;
    byteCount_ += xBuf_->size_;
  }
  while (len > 0) {
    [self updateWithByte:IOSByteArray_Get(nil_chk(inArg), inOff)];
    inOff++;
    len--;
  }
}

- (void)finish {
  jlong bitLength = (LShift64(byteCount_, 3));
  [self updateWithByte:(jbyte) 128];
  while (xBufOff_ != 0) {
    [self updateWithByte:(jbyte) 0];
  }
  [self processLengthWithLong:bitLength];
  [self processBlock];
}

- (void)reset {
  byteCount_ = 0;
  xBufOff_ = 0;
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(xBuf_))->size_; i++) {
    *IOSByteArray_GetRef(xBuf_, i) = 0;
  }
}

- (void)populateStateWithByteArray:(IOSByteArray *)state {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(xBuf_, 0, state, 0, xBufOff_);
  ImActorModelCryptoBouncycastleUtilsPack_intToBigEndianWithInt_withByteArray_withInt_(xBufOff_, state, 4);
  ImActorModelCryptoBouncycastleUtilsPack_longToBigEndianWithLong_withByteArray_withInt_(byteCount_, state, 8);
}

- (jint)getByteLength {
  return ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest_BYTE_LENGTH;
}

- (void)copyAllFieldsTo:(ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest *)other {
  [super copyAllFieldsTo:other];
  other->xBuf_ = xBuf_;
  other->xBufOff_ = xBufOff_;
  other->byteCount_ = byteCount_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest)
