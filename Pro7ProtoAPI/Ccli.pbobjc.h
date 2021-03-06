// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: ccli.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30004
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30004 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class ApplicationInfo;
@class Template_Slide;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum CCLIDocument_DisplayType

typedef GPB_ENUM(CCLIDocument_DisplayType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  CCLIDocument_DisplayType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  CCLIDocument_DisplayType_DisplayTypeFirstSlide = 0,
  CCLIDocument_DisplayType_DisplayTypeLastSlide = 1,
  CCLIDocument_DisplayType_DisplayTypeFirstAndLastSlide = 2,
  CCLIDocument_DisplayType_DisplayTypeAllSlides = 3,
};

GPBEnumDescriptor *CCLIDocument_DisplayType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL CCLIDocument_DisplayType_IsValidValue(int32_t value);

#pragma mark - CcliRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
GPB_FINAL @interface CcliRoot : GPBRootObject
@end

#pragma mark - CCLIDocument

typedef GPB_ENUM(CCLIDocument_FieldNumber) {
  CCLIDocument_FieldNumber_ApplicationInfo = 1,
  CCLIDocument_FieldNumber_EnableCcliDisplay = 2,
  CCLIDocument_FieldNumber_CcliLicense = 3,
  CCLIDocument_FieldNumber_DisplayType = 4,
  CCLIDocument_FieldNumber_Template_p = 5,
};

GPB_FINAL @interface CCLIDocument : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) ApplicationInfo *applicationInfo;
/** Test to see if @c applicationInfo has been set. */
@property(nonatomic, readwrite) BOOL hasApplicationInfo;

@property(nonatomic, readwrite) BOOL enableCcliDisplay;

@property(nonatomic, readwrite, copy, null_resettable) NSString *ccliLicense;

@property(nonatomic, readwrite) CCLIDocument_DisplayType displayType;

@property(nonatomic, readwrite, strong, null_resettable) Template_Slide *template_p;
/** Test to see if @c template_p has been set. */
@property(nonatomic, readwrite) BOOL hasTemplate_p;

@end

/**
 * Fetches the raw value of a @c CCLIDocument's @c displayType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t CCLIDocument_DisplayType_RawValue(CCLIDocument *message);
/**
 * Sets the raw value of an @c CCLIDocument's @c displayType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetCCLIDocument_DisplayType_RawValue(CCLIDocument *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
