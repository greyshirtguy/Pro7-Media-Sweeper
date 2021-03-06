// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: stage.proto

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
@class CollectionElementType;
@class Slide;
@class Stage_Layout;
@class UUID;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - StageRoot

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
GPB_FINAL @interface StageRoot : GPBRootObject
@end

#pragma mark - Stage

GPB_FINAL @interface Stage : GPBMessage

@end

#pragma mark - Stage_Layout

typedef GPB_ENUM(Stage_Layout_FieldNumber) {
  Stage_Layout_FieldNumber_Uuid = 1,
  Stage_Layout_FieldNumber_Name = 2,
  Stage_Layout_FieldNumber_Slide = 3,
};

GPB_FINAL @interface Stage_Layout : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *uuid;
/** Test to see if @c uuid has been set. */
@property(nonatomic, readwrite) BOOL hasUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, strong, null_resettable) Slide *slide;
/** Test to see if @c slide has been set. */
@property(nonatomic, readwrite) BOOL hasSlide;

@end

#pragma mark - Stage_Document

typedef GPB_ENUM(Stage_Document_FieldNumber) {
  Stage_Document_FieldNumber_ApplicationInfo = 1,
  Stage_Document_FieldNumber_LayoutsArray = 2,
};

GPB_FINAL @interface Stage_Document : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) ApplicationInfo *applicationInfo;
/** Test to see if @c applicationInfo has been set. */
@property(nonatomic, readwrite) BOOL hasApplicationInfo;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Stage_Layout*> *layoutsArray;
/** The number of items in @c layoutsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger layoutsArray_Count;

@end

#pragma mark - Stage_ScreenAssignment

typedef GPB_ENUM(Stage_ScreenAssignment_FieldNumber) {
  Stage_ScreenAssignment_FieldNumber_Screen = 1,
  Stage_ScreenAssignment_FieldNumber_Layout = 2,
};

GPB_FINAL @interface Stage_ScreenAssignment : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) CollectionElementType *screen;
/** Test to see if @c screen has been set. */
@property(nonatomic, readwrite) BOOL hasScreen;

@property(nonatomic, readwrite, strong, null_resettable) CollectionElementType *layout;
/** Test to see if @c layout has been set. */
@property(nonatomic, readwrite) BOOL hasLayout;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
