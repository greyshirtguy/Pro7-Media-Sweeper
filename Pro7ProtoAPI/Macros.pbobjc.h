// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: macros.proto

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

@class Action;
@class ApplicationInfo;
@class Color;
@class MacrosDocument_Macro;
@class UUID;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - MacrosRoot

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
GPB_FINAL @interface MacrosRoot : GPBRootObject
@end

#pragma mark - MacrosDocument

typedef GPB_ENUM(MacrosDocument_FieldNumber) {
  MacrosDocument_FieldNumber_ApplicationInfo = 1,
  MacrosDocument_FieldNumber_MacrosArray = 2,
};

GPB_FINAL @interface MacrosDocument : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) ApplicationInfo *applicationInfo;
/** Test to see if @c applicationInfo has been set. */
@property(nonatomic, readwrite) BOOL hasApplicationInfo;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<MacrosDocument_Macro*> *macrosArray;
/** The number of items in @c macrosArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger macrosArray_Count;

@end

#pragma mark - MacrosDocument_Macro

typedef GPB_ENUM(MacrosDocument_Macro_FieldNumber) {
  MacrosDocument_Macro_FieldNumber_Uuid = 1,
  MacrosDocument_Macro_FieldNumber_Name = 2,
  MacrosDocument_Macro_FieldNumber_Color = 3,
  MacrosDocument_Macro_FieldNumber_ActionsArray = 4,
  MacrosDocument_Macro_FieldNumber_TriggerOnStartup = 5,
};

GPB_FINAL @interface MacrosDocument_Macro : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *uuid;
/** Test to see if @c uuid has been set. */
@property(nonatomic, readwrite) BOOL hasUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, strong, null_resettable) Color *color;
/** Test to see if @c color has been set. */
@property(nonatomic, readwrite) BOOL hasColor;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Action*> *actionsArray;
/** The number of items in @c actionsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger actionsArray_Count;

@property(nonatomic, readwrite) BOOL triggerOnStartup;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
