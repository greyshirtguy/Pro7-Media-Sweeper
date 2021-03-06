// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: template.proto

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
@class Slide;
@class Template_Slide;
@class UUID;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - TemplateRoot

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
GPB_FINAL @interface TemplateRoot : GPBRootObject
@end

#pragma mark - Template

GPB_FINAL @interface Template : GPBMessage

@end

#pragma mark - Template_Slide

typedef GPB_ENUM(Template_Slide_FieldNumber) {
  Template_Slide_FieldNumber_BaseSlide = 1,
  Template_Slide_FieldNumber_Name = 2,
};

GPB_FINAL @interface Template_Slide : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Slide *baseSlide;
/** Test to see if @c baseSlide has been set. */
@property(nonatomic, readwrite) BOOL hasBaseSlide;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@end

#pragma mark - Template_Document

typedef GPB_ENUM(Template_Document_FieldNumber) {
  Template_Document_FieldNumber_ApplicationInfo = 1,
  Template_Document_FieldNumber_SlidesArray = 3,
};

GPB_FINAL @interface Template_Document : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) ApplicationInfo *applicationInfo;
/** Test to see if @c applicationInfo has been set. */
@property(nonatomic, readwrite) BOOL hasApplicationInfo;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Template_Slide*> *slidesArray;
/** The number of items in @c slidesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger slidesArray_Count;

@end

#pragma mark - Template_Identification

typedef GPB_ENUM(Template_Identification_FieldNumber) {
  Template_Identification_FieldNumber_Uuid = 1,
  Template_Identification_FieldNumber_Name = 2,
  Template_Identification_FieldNumber_SlideUuid = 3,
  Template_Identification_FieldNumber_SlideName = 4,
  Template_Identification_FieldNumber_SlideIndex = 5,
};

GPB_FINAL @interface Template_Identification : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *uuid;
/** Test to see if @c uuid has been set. */
@property(nonatomic, readwrite) BOOL hasUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, strong, null_resettable) UUID *slideUuid;
/** Test to see if @c slideUuid has been set. */
@property(nonatomic, readwrite) BOOL hasSlideUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *slideName;

@property(nonatomic, readwrite) uint32_t slideIndex;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
