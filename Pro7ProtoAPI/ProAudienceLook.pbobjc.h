// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: proAudienceLook.proto

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

@class ProAudienceLook_ProScreenLook;
@class URL;
@class UUID;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ProAudienceLookRoot

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
GPB_FINAL @interface ProAudienceLookRoot : GPBRootObject
@end

#pragma mark - ProAudienceLook

typedef GPB_ENUM(ProAudienceLook_FieldNumber) {
  ProAudienceLook_FieldNumber_Uuid = 1,
  ProAudienceLook_FieldNumber_Name = 2,
  ProAudienceLook_FieldNumber_ScreenLooksArray = 3,
  ProAudienceLook_FieldNumber_OriginalLookUuid = 4,
};

GPB_FINAL @interface ProAudienceLook : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *uuid;
/** Test to see if @c uuid has been set. */
@property(nonatomic, readwrite) BOOL hasUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ProAudienceLook_ProScreenLook*> *screenLooksArray;
/** The number of items in @c screenLooksArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger screenLooksArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) UUID *originalLookUuid;
/** Test to see if @c originalLookUuid has been set. */
@property(nonatomic, readwrite) BOOL hasOriginalLookUuid;

@end

#pragma mark - ProAudienceLook_ProScreenLook

typedef GPB_ENUM(ProAudienceLook_ProScreenLook_FieldNumber) {
  ProAudienceLook_ProScreenLook_FieldNumber_ProScreenUuid = 1,
  ProAudienceLook_ProScreenLook_FieldNumber_PropsEnabled = 2,
  ProAudienceLook_ProScreenLook_FieldNumber_LiveVideoEnabled = 3,
  ProAudienceLook_ProScreenLook_FieldNumber_PresentationBackgroundEnabled = 4,
  ProAudienceLook_ProScreenLook_FieldNumber_TemplateDocumentFilePath = 5,
  ProAudienceLook_ProScreenLook_FieldNumber_TemplateSlideUuid = 6,
  ProAudienceLook_ProScreenLook_FieldNumber_PresentationForegroundEnabled = 7,
  ProAudienceLook_ProScreenLook_FieldNumber_MaskUuid = 8,
  ProAudienceLook_ProScreenLook_FieldNumber_AnnouncementsEnabled = 9,
  ProAudienceLook_ProScreenLook_FieldNumber_PropsLayerEnabled = 10,
  ProAudienceLook_ProScreenLook_FieldNumber_MessagesLayerEnabled = 11,
};

GPB_FINAL @interface ProAudienceLook_ProScreenLook : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *proScreenUuid;
/** Test to see if @c proScreenUuid has been set. */
@property(nonatomic, readwrite) BOOL hasProScreenUuid;

@property(nonatomic, readwrite) BOOL propsEnabled;

@property(nonatomic, readwrite) BOOL liveVideoEnabled;

@property(nonatomic, readwrite) BOOL presentationBackgroundEnabled;

@property(nonatomic, readwrite, strong, null_resettable) URL *templateDocumentFilePath;
/** Test to see if @c templateDocumentFilePath has been set. */
@property(nonatomic, readwrite) BOOL hasTemplateDocumentFilePath;

@property(nonatomic, readwrite, strong, null_resettable) UUID *templateSlideUuid;
/** Test to see if @c templateSlideUuid has been set. */
@property(nonatomic, readwrite) BOOL hasTemplateSlideUuid;

@property(nonatomic, readwrite) BOOL presentationForegroundEnabled;

@property(nonatomic, readwrite, strong, null_resettable) UUID *maskUuid;
/** Test to see if @c maskUuid has been set. */
@property(nonatomic, readwrite) BOOL hasMaskUuid;

@property(nonatomic, readwrite) BOOL announcementsEnabled;

@property(nonatomic, readwrite) BOOL propsLayerEnabled;

@property(nonatomic, readwrite) BOOL messagesLayerEnabled;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)