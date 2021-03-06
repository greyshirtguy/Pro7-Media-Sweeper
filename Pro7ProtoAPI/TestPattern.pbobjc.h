// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: testPattern.proto

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

@class Color;
@class TestPattern_BlendGrid;
@class TestPattern_CustomColor;
@class TestPattern_IntensityColor;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum TestPattern_Type

typedef GPB_ENUM(TestPattern_Type) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  TestPattern_Type_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  TestPattern_Type_TypeUnknown = 0,
  TestPattern_Type_TypeBlendGrid = 1,
  TestPattern_Type_TypeColorBars = 2,
  TestPattern_Type_TypeFocus = 3,
  TestPattern_Type_TypeGrayScale = 4,
  TestPattern_Type_TypeBlackColor = 5,
  TestPattern_Type_TypeWhiteColor = 6,
  TestPattern_Type_TypeCustomColor = 7,
};

GPBEnumDescriptor *TestPattern_Type_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL TestPattern_Type_IsValidValue(int32_t value);

#pragma mark - TestPatternRoot

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
GPB_FINAL @interface TestPatternRoot : GPBRootObject
@end

#pragma mark - TestPattern

typedef GPB_ENUM(TestPattern_FieldNumber) {
  TestPattern_FieldNumber_Type = 1,
  TestPattern_FieldNumber_BlendGrid = 2,
  TestPattern_FieldNumber_CustomColor = 3,
  TestPattern_FieldNumber_Intensity = 4,
};

typedef GPB_ENUM(TestPattern_PatternProperties_OneOfCase) {
  TestPattern_PatternProperties_OneOfCase_GPBUnsetOneOfCase = 0,
  TestPattern_PatternProperties_OneOfCase_BlendGrid = 2,
  TestPattern_PatternProperties_OneOfCase_CustomColor = 3,
  TestPattern_PatternProperties_OneOfCase_Intensity = 4,
};

GPB_FINAL @interface TestPattern : GPBMessage

@property(nonatomic, readwrite) TestPattern_Type type;

@property(nonatomic, readonly) TestPattern_PatternProperties_OneOfCase patternPropertiesOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) TestPattern_BlendGrid *blendGrid;

@property(nonatomic, readwrite, strong, null_resettable) TestPattern_CustomColor *customColor;

@property(nonatomic, readwrite, strong, null_resettable) TestPattern_IntensityColor *intensity;

@end

/**
 * Fetches the raw value of a @c TestPattern's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t TestPattern_Type_RawValue(TestPattern *message);
/**
 * Sets the raw value of an @c TestPattern's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTestPattern_Type_RawValue(TestPattern *message, int32_t value);

/**
 * Clears whatever value was set for the oneof 'patternProperties'.
 **/
void TestPattern_ClearPatternPropertiesOneOfCase(TestPattern *message);

#pragma mark - TestPattern_BlendGrid

typedef GPB_ENUM(TestPattern_BlendGrid_FieldNumber) {
  TestPattern_BlendGrid_FieldNumber_DrawGrid = 1,
  TestPattern_BlendGrid_FieldNumber_DrawCircles = 2,
  TestPattern_BlendGrid_FieldNumber_DrawLines = 3,
  TestPattern_BlendGrid_FieldNumber_InvertColors = 4,
  TestPattern_BlendGrid_FieldNumber_GridSpacing = 5,
};

GPB_FINAL @interface TestPattern_BlendGrid : GPBMessage

@property(nonatomic, readwrite) BOOL drawGrid;

@property(nonatomic, readwrite) BOOL drawCircles;

@property(nonatomic, readwrite) BOOL drawLines;

@property(nonatomic, readwrite) BOOL invertColors;

@property(nonatomic, readwrite) double gridSpacing;

@end

#pragma mark - TestPattern_CustomColor

typedef GPB_ENUM(TestPattern_CustomColor_FieldNumber) {
  TestPattern_CustomColor_FieldNumber_Color = 1,
};

GPB_FINAL @interface TestPattern_CustomColor : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Color *color;
/** Test to see if @c color has been set. */
@property(nonatomic, readwrite) BOOL hasColor;

@end

#pragma mark - TestPattern_IntensityColor

typedef GPB_ENUM(TestPattern_IntensityColor_FieldNumber) {
  TestPattern_IntensityColor_FieldNumber_Intensity = 1,
};

GPB_FINAL @interface TestPattern_IntensityColor : GPBMessage

@property(nonatomic, readwrite) double intensity;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
