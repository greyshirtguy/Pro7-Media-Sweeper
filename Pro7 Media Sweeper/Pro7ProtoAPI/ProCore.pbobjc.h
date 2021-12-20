// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: proCore.proto

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

@class AudioInput;
@class ControlTransport_BeginScrubControlType;
@class ControlTransport_EndScrubControlType;
@class ControlTransport_FastForwardControlType;
@class ControlTransport_GoToEndControlType;
@class ControlTransport_GoToStartControlType;
@class ControlTransport_JumpToPercentControlType;
@class ControlTransport_JumpToTimeControlType;
@class ControlTransport_MarkInPointControlType;
@class ControlTransport_MarkOutPointControlType;
@class ControlTransport_PauseControlType;
@class ControlTransport_PlayControlType;
@class ControlTransport_RewindControlType;
@class ControlTransport_ScrubToPercentControlType;
@class ControlTransport_ScrubToTimeControlType;
@class ControlTransport_SetAudioFadeType;
@class ControlTransport_SetAudioPropertiesType;
@class ControlTransport_SetEffectsControlType;
@class ControlTransport_SetFlippedModeControlType;
@class ControlTransport_SetNativeRotationControlType;
@class ControlTransport_SetPlayRateControlType;
@class ControlTransport_SetScaleModeControlType;
@class ControlTransport_SkipBackControlType;
@class ControlTransport_SkipForwardControlType;
@class ControlTransport_StepBackControlType;
@class ControlTransport_StepForwardControlType;
@class ControlTransport_TogglePlaybackControlType;
@class ControlTransport_UpdateEffectControlType;
@class Effect;
@class Graphics_EdgeInsets;
@class MediaMetadataRequestResponse_BitmapInfo;
@class MediaMetadataRequestResponse_Metadata;
@class Media_AudioProperties;
@class RecordRequest_Resi;
@class Recording_Stream;
@class TextSegmentRequest_Segment;
@class URL;
@class VideoInput;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum MediaMetadataRequestInfo_NativeRotationType

typedef GPB_ENUM(MediaMetadataRequestInfo_NativeRotationType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  MediaMetadataRequestInfo_NativeRotationType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  MediaMetadataRequestInfo_NativeRotationType_NativeRotationTypeRotateStandard = 0,
  MediaMetadataRequestInfo_NativeRotationType_NativeRotationTypeRotate90 = 90,
  MediaMetadataRequestInfo_NativeRotationType_NativeRotationTypeRotate180 = 180,
  MediaMetadataRequestInfo_NativeRotationType_NativeRotationTypeRotate270 = 270,
};

GPBEnumDescriptor *MediaMetadataRequestInfo_NativeRotationType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL MediaMetadataRequestInfo_NativeRotationType_IsValidValue(int32_t value);

#pragma mark - Enum MediaMetadataRequestResponse_Metadata_ContentType

typedef GPB_ENUM(MediaMetadataRequestResponse_Metadata_ContentType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  MediaMetadataRequestResponse_Metadata_ContentType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  MediaMetadataRequestResponse_Metadata_ContentType_ContentTypeUnknown = 0,
  MediaMetadataRequestResponse_Metadata_ContentType_ContentTypeAudio = 1,
  MediaMetadataRequestResponse_Metadata_ContentType_ContentTypeImage = 2,
  MediaMetadataRequestResponse_Metadata_ContentType_ContentTypeVideo = 3,
};

GPBEnumDescriptor *MediaMetadataRequestResponse_Metadata_ContentType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL MediaMetadataRequestResponse_Metadata_ContentType_IsValidValue(int32_t value);

#pragma mark - Enum TriggerOptions_ContentDestination

typedef GPB_ENUM(TriggerOptions_ContentDestination) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  TriggerOptions_ContentDestination_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  TriggerOptions_ContentDestination_ContentDestinationGlobal = 0,
  TriggerOptions_ContentDestination_ContentDestinationAnnouncements = 1,
};

GPBEnumDescriptor *TriggerOptions_ContentDestination_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL TriggerOptions_ContentDestination_IsValidValue(int32_t value);

#pragma mark - Enum ControlTransport_SetScaleModeControlType_ScaleBehavior

typedef GPB_ENUM(ControlTransport_SetScaleModeControlType_ScaleBehavior) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  ControlTransport_SetScaleModeControlType_ScaleBehavior_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  ControlTransport_SetScaleModeControlType_ScaleBehavior_ScaleBehaviorFit = 0,
  ControlTransport_SetScaleModeControlType_ScaleBehavior_ScaleBehaviorFill = 1,
  ControlTransport_SetScaleModeControlType_ScaleBehavior_ScaleBehaviorStretch = 2,
  ControlTransport_SetScaleModeControlType_ScaleBehavior_ScaleBehaviorCustom = 3,
};

GPBEnumDescriptor *ControlTransport_SetScaleModeControlType_ScaleBehavior_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL ControlTransport_SetScaleModeControlType_ScaleBehavior_IsValidValue(int32_t value);

#pragma mark - Enum ControlTransport_SetScaleModeControlType_ScaleAlignment

typedef GPB_ENUM(ControlTransport_SetScaleModeControlType_ScaleAlignment) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  ControlTransport_SetScaleModeControlType_ScaleAlignment_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentMiddleCenter = 0,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentTopLeft = 1,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentTopCenter = 2,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentTopRight = 3,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentMiddleRight = 4,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentBottomRight = 5,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentBottomCenter = 6,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentBottomLeft = 7,
  ControlTransport_SetScaleModeControlType_ScaleAlignment_ScaleAlignmentMiddleLeft = 8,
};

GPBEnumDescriptor *ControlTransport_SetScaleModeControlType_ScaleAlignment_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL ControlTransport_SetScaleModeControlType_ScaleAlignment_IsValidValue(int32_t value);

#pragma mark - Enum ControlTransport_SetNativeRotationControlType_NativeRotationType

typedef GPB_ENUM(ControlTransport_SetNativeRotationControlType_NativeRotationType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  ControlTransport_SetNativeRotationControlType_NativeRotationType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  ControlTransport_SetNativeRotationControlType_NativeRotationType_NativeRotationTypeRotateStandard = 0,
  ControlTransport_SetNativeRotationControlType_NativeRotationType_NativeRotationTypeRotate90 = 90,
  ControlTransport_SetNativeRotationControlType_NativeRotationType_NativeRotationTypeRotate180 = 180,
  ControlTransport_SetNativeRotationControlType_NativeRotationType_NativeRotationTypeRotate270 = 270,
};

GPBEnumDescriptor *ControlTransport_SetNativeRotationControlType_NativeRotationType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL ControlTransport_SetNativeRotationControlType_NativeRotationType_IsValidValue(int32_t value);

#pragma mark - ProCoreRoot

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
GPB_FINAL @interface ProCoreRoot : GPBRootObject
@end

#pragma mark - MediaMetadataRequestInfo

typedef GPB_ENUM(MediaMetadataRequestInfo_FieldNumber) {
  MediaMetadataRequestInfo_FieldNumber_FilePath = 1,
  MediaMetadataRequestInfo_FieldNumber_Time = 2,
  MediaMetadataRequestInfo_FieldNumber_Width = 3,
  MediaMetadataRequestInfo_FieldNumber_Height = 4,
  MediaMetadataRequestInfo_FieldNumber_EffectsArray = 5,
  MediaMetadataRequestInfo_FieldNumber_CropInsets = 6,
  MediaMetadataRequestInfo_FieldNumber_NativeRotation = 7,
  MediaMetadataRequestInfo_FieldNumber_FlippedHorizontally = 8,
  MediaMetadataRequestInfo_FieldNumber_FlippedVertically = 9,
};

GPB_FINAL @interface MediaMetadataRequestInfo : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *filePath;

@property(nonatomic, readwrite) float time;

@property(nonatomic, readwrite) uint32_t width;

@property(nonatomic, readwrite) uint32_t height;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Effect*> *effectsArray;
/** The number of items in @c effectsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger effectsArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) Graphics_EdgeInsets *cropInsets;
/** Test to see if @c cropInsets has been set. */
@property(nonatomic, readwrite) BOOL hasCropInsets;

@property(nonatomic, readwrite) MediaMetadataRequestInfo_NativeRotationType nativeRotation;

@property(nonatomic, readwrite) BOOL flippedHorizontally;

@property(nonatomic, readwrite) BOOL flippedVertically;

@end

/**
 * Fetches the raw value of a @c MediaMetadataRequestInfo's @c nativeRotation property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t MediaMetadataRequestInfo_NativeRotation_RawValue(MediaMetadataRequestInfo *message);
/**
 * Sets the raw value of an @c MediaMetadataRequestInfo's @c nativeRotation property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetMediaMetadataRequestInfo_NativeRotation_RawValue(MediaMetadataRequestInfo *message, int32_t value);

#pragma mark - MediaMetadataRequestResponse

typedef GPB_ENUM(MediaMetadataRequestResponse_FieldNumber) {
  MediaMetadataRequestResponse_FieldNumber_Metadata = 1,
  MediaMetadataRequestResponse_FieldNumber_GeneratedBitmapInfo = 2,
};

GPB_FINAL @interface MediaMetadataRequestResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) MediaMetadataRequestResponse_Metadata *metadata;
/** Test to see if @c metadata has been set. */
@property(nonatomic, readwrite) BOOL hasMetadata;

@property(nonatomic, readwrite, strong, null_resettable) MediaMetadataRequestResponse_BitmapInfo *generatedBitmapInfo;
/** Test to see if @c generatedBitmapInfo has been set. */
@property(nonatomic, readwrite) BOOL hasGeneratedBitmapInfo;

@end

#pragma mark - MediaMetadataRequestResponse_Metadata

typedef GPB_ENUM(MediaMetadataRequestResponse_Metadata_FieldNumber) {
  MediaMetadataRequestResponse_Metadata_FieldNumber_Width = 1,
  MediaMetadataRequestResponse_Metadata_FieldNumber_Height = 2,
  MediaMetadataRequestResponse_Metadata_FieldNumber_Fps = 3,
  MediaMetadataRequestResponse_Metadata_FieldNumber_Duration = 4,
  MediaMetadataRequestResponse_Metadata_FieldNumber_NumberAudioChannels = 5,
  MediaMetadataRequestResponse_Metadata_FieldNumber_Codec = 6,
  MediaMetadataRequestResponse_Metadata_FieldNumber_Artist = 7,
  MediaMetadataRequestResponse_Metadata_FieldNumber_Title = 8,
  MediaMetadataRequestResponse_Metadata_FieldNumber_Rotation = 9,
  MediaMetadataRequestResponse_Metadata_FieldNumber_ContentType = 10,
};

GPB_FINAL @interface MediaMetadataRequestResponse_Metadata : GPBMessage

@property(nonatomic, readwrite) uint32_t width;

@property(nonatomic, readwrite) uint32_t height;

@property(nonatomic, readwrite) float fps;

@property(nonatomic, readwrite) float duration;

@property(nonatomic, readwrite) uint32_t numberAudioChannels;

@property(nonatomic, readwrite, copy, null_resettable) NSString *codec;

@property(nonatomic, readwrite, copy, null_resettable) NSString *artist;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite) float rotation;

@property(nonatomic, readwrite) MediaMetadataRequestResponse_Metadata_ContentType contentType;

@end

/**
 * Fetches the raw value of a @c MediaMetadataRequestResponse_Metadata's @c contentType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t MediaMetadataRequestResponse_Metadata_ContentType_RawValue(MediaMetadataRequestResponse_Metadata *message);
/**
 * Sets the raw value of an @c MediaMetadataRequestResponse_Metadata's @c contentType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetMediaMetadataRequestResponse_Metadata_ContentType_RawValue(MediaMetadataRequestResponse_Metadata *message, int32_t value);

#pragma mark - MediaMetadataRequestResponse_BitmapInfo

typedef GPB_ENUM(MediaMetadataRequestResponse_BitmapInfo_FieldNumber) {
  MediaMetadataRequestResponse_BitmapInfo_FieldNumber_Width = 1,
  MediaMetadataRequestResponse_BitmapInfo_FieldNumber_Height = 2,
};

GPB_FINAL @interface MediaMetadataRequestResponse_BitmapInfo : GPBMessage

@property(nonatomic, readwrite) uint32_t width;

@property(nonatomic, readwrite) uint32_t height;

@end

#pragma mark - TriggerOptions

typedef GPB_ENUM(TriggerOptions_FieldNumber) {
  TriggerOptions_FieldNumber_ContentDestination = 1,
  TriggerOptions_FieldNumber_SuppressAutoStartVideo = 2,
  TriggerOptions_FieldNumber_SuppressMediaBackground = 3,
  TriggerOptions_FieldNumber_ForceRetrigger = 4,
  TriggerOptions_FieldNumber_ResetChordChart = 5,
  TriggerOptions_FieldNumber_FromPlaylistLibrary = 6,
  TriggerOptions_FieldNumber_FromTimeline = 7,
  TriggerOptions_FieldNumber_IgnoreAnalytics = 8,
};

GPB_FINAL @interface TriggerOptions : GPBMessage

@property(nonatomic, readwrite) TriggerOptions_ContentDestination contentDestination;

@property(nonatomic, readwrite) BOOL suppressAutoStartVideo;

@property(nonatomic, readwrite) BOOL suppressMediaBackground;

@property(nonatomic, readwrite) BOOL forceRetrigger;

@property(nonatomic, readwrite) BOOL resetChordChart;

@property(nonatomic, readwrite) BOOL fromPlaylistLibrary;

@property(nonatomic, readwrite) BOOL fromTimeline;

@property(nonatomic, readwrite) BOOL ignoreAnalytics;

@end

/**
 * Fetches the raw value of a @c TriggerOptions's @c contentDestination property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t TriggerOptions_ContentDestination_RawValue(TriggerOptions *message);
/**
 * Sets the raw value of an @c TriggerOptions's @c contentDestination property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTriggerOptions_ContentDestination_RawValue(TriggerOptions *message, int32_t value);

#pragma mark - ControlTransport

typedef GPB_ENUM(ControlTransport_FieldNumber) {
  ControlTransport_FieldNumber_Play = 1,
  ControlTransport_FieldNumber_Pause = 2,
  ControlTransport_FieldNumber_Rewind = 3,
  ControlTransport_FieldNumber_Fastforward = 4,
  ControlTransport_FieldNumber_SkipBack = 5,
  ControlTransport_FieldNumber_SkipForward = 6,
  ControlTransport_FieldNumber_StepBack = 7,
  ControlTransport_FieldNumber_StepForward = 8,
  ControlTransport_FieldNumber_GoToStart = 9,
  ControlTransport_FieldNumber_GoToEnd = 10,
  ControlTransport_FieldNumber_JumpToTime = 11,
  ControlTransport_FieldNumber_JumpToPercent = 12,
  ControlTransport_FieldNumber_MarkIn = 13,
  ControlTransport_FieldNumber_MarkOut = 14,
  ControlTransport_FieldNumber_SetScaleMode = 15,
  ControlTransport_FieldNumber_SetFlippedMode = 16,
  ControlTransport_FieldNumber_SetPlayRate = 17,
  ControlTransport_FieldNumber_SetRotation = 18,
  ControlTransport_FieldNumber_TogglePlayback = 19,
  ControlTransport_FieldNumber_SetEffects = 20,
  ControlTransport_FieldNumber_UpdateEffect = 21,
  ControlTransport_FieldNumber_BeginScrub = 22,
  ControlTransport_FieldNumber_EndScrub = 23,
  ControlTransport_FieldNumber_ScrubToTime = 24,
  ControlTransport_FieldNumber_ScrubToPercent = 25,
  ControlTransport_FieldNumber_SetAudioFade = 26,
  ControlTransport_FieldNumber_SetAudioProperties = 27,
};

typedef GPB_ENUM(ControlTransport_ControlType_OneOfCase) {
  ControlTransport_ControlType_OneOfCase_GPBUnsetOneOfCase = 0,
  ControlTransport_ControlType_OneOfCase_Play = 1,
  ControlTransport_ControlType_OneOfCase_Pause = 2,
  ControlTransport_ControlType_OneOfCase_Rewind = 3,
  ControlTransport_ControlType_OneOfCase_Fastforward = 4,
  ControlTransport_ControlType_OneOfCase_SkipBack = 5,
  ControlTransport_ControlType_OneOfCase_SkipForward = 6,
  ControlTransport_ControlType_OneOfCase_StepBack = 7,
  ControlTransport_ControlType_OneOfCase_StepForward = 8,
  ControlTransport_ControlType_OneOfCase_GoToStart = 9,
  ControlTransport_ControlType_OneOfCase_GoToEnd = 10,
  ControlTransport_ControlType_OneOfCase_JumpToTime = 11,
  ControlTransport_ControlType_OneOfCase_JumpToPercent = 12,
  ControlTransport_ControlType_OneOfCase_MarkIn = 13,
  ControlTransport_ControlType_OneOfCase_MarkOut = 14,
  ControlTransport_ControlType_OneOfCase_SetScaleMode = 15,
  ControlTransport_ControlType_OneOfCase_SetFlippedMode = 16,
  ControlTransport_ControlType_OneOfCase_SetPlayRate = 17,
  ControlTransport_ControlType_OneOfCase_SetRotation = 18,
  ControlTransport_ControlType_OneOfCase_TogglePlayback = 19,
  ControlTransport_ControlType_OneOfCase_SetEffects = 20,
  ControlTransport_ControlType_OneOfCase_UpdateEffect = 21,
  ControlTransport_ControlType_OneOfCase_BeginScrub = 22,
  ControlTransport_ControlType_OneOfCase_EndScrub = 23,
  ControlTransport_ControlType_OneOfCase_ScrubToTime = 24,
  ControlTransport_ControlType_OneOfCase_ScrubToPercent = 25,
  ControlTransport_ControlType_OneOfCase_SetAudioFade = 26,
  ControlTransport_ControlType_OneOfCase_SetAudioProperties = 27,
};

GPB_FINAL @interface ControlTransport : GPBMessage

@property(nonatomic, readonly) ControlTransport_ControlType_OneOfCase controlTypeOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_PlayControlType *play;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_PauseControlType *pause;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_RewindControlType *rewind;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_FastForwardControlType *fastforward;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SkipBackControlType *skipBack;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SkipForwardControlType *skipForward;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_StepBackControlType *stepBack;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_StepForwardControlType *stepForward;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_GoToStartControlType *goToStart;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_GoToEndControlType *goToEnd;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_JumpToTimeControlType *jumpToTime;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_JumpToPercentControlType *jumpToPercent;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_MarkInPointControlType *markIn;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_MarkOutPointControlType *markOut;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SetScaleModeControlType *setScaleMode;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SetFlippedModeControlType *setFlippedMode;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SetPlayRateControlType *setPlayRate;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SetNativeRotationControlType *setRotation;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_TogglePlaybackControlType *togglePlayback;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SetEffectsControlType *setEffects;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_UpdateEffectControlType *updateEffect;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_BeginScrubControlType *beginScrub;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_EndScrubControlType *endScrub;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_ScrubToTimeControlType *scrubToTime;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_ScrubToPercentControlType *scrubToPercent;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SetAudioFadeType *setAudioFade;

@property(nonatomic, readwrite, strong, null_resettable) ControlTransport_SetAudioPropertiesType *setAudioProperties;

@end

/**
 * Clears whatever value was set for the oneof 'controlType'.
 **/
void ControlTransport_ClearControlTypeOneOfCase(ControlTransport *message);

#pragma mark - ControlTransport_PlayControlType

GPB_FINAL @interface ControlTransport_PlayControlType : GPBMessage

@end

#pragma mark - ControlTransport_PauseControlType

GPB_FINAL @interface ControlTransport_PauseControlType : GPBMessage

@end

#pragma mark - ControlTransport_RewindControlType

GPB_FINAL @interface ControlTransport_RewindControlType : GPBMessage

@end

#pragma mark - ControlTransport_FastForwardControlType

GPB_FINAL @interface ControlTransport_FastForwardControlType : GPBMessage

@end

#pragma mark - ControlTransport_SkipBackControlType

typedef GPB_ENUM(ControlTransport_SkipBackControlType_FieldNumber) {
  ControlTransport_SkipBackControlType_FieldNumber_Offset = 1,
};

GPB_FINAL @interface ControlTransport_SkipBackControlType : GPBMessage

@property(nonatomic, readwrite) double offset;

@end

#pragma mark - ControlTransport_SkipForwardControlType

typedef GPB_ENUM(ControlTransport_SkipForwardControlType_FieldNumber) {
  ControlTransport_SkipForwardControlType_FieldNumber_Offset = 1,
};

GPB_FINAL @interface ControlTransport_SkipForwardControlType : GPBMessage

@property(nonatomic, readwrite) double offset;

@end

#pragma mark - ControlTransport_StepBackControlType

GPB_FINAL @interface ControlTransport_StepBackControlType : GPBMessage

@end

#pragma mark - ControlTransport_StepForwardControlType

GPB_FINAL @interface ControlTransport_StepForwardControlType : GPBMessage

@end

#pragma mark - ControlTransport_GoToStartControlType

typedef GPB_ENUM(ControlTransport_GoToStartControlType_FieldNumber) {
  ControlTransport_GoToStartControlType_FieldNumber_Offset = 1,
};

GPB_FINAL @interface ControlTransport_GoToStartControlType : GPBMessage

@property(nonatomic, readwrite) double offset;

@end

#pragma mark - ControlTransport_GoToEndControlType

typedef GPB_ENUM(ControlTransport_GoToEndControlType_FieldNumber) {
  ControlTransport_GoToEndControlType_FieldNumber_Offset = 1,
};

GPB_FINAL @interface ControlTransport_GoToEndControlType : GPBMessage

@property(nonatomic, readwrite) double offset;

@end

#pragma mark - ControlTransport_JumpToTimeControlType

typedef GPB_ENUM(ControlTransport_JumpToTimeControlType_FieldNumber) {
  ControlTransport_JumpToTimeControlType_FieldNumber_Time = 1,
};

GPB_FINAL @interface ControlTransport_JumpToTimeControlType : GPBMessage

@property(nonatomic, readwrite) double time;

@end

#pragma mark - ControlTransport_JumpToPercentControlType

typedef GPB_ENUM(ControlTransport_JumpToPercentControlType_FieldNumber) {
  ControlTransport_JumpToPercentControlType_FieldNumber_Percent = 1,
};

GPB_FINAL @interface ControlTransport_JumpToPercentControlType : GPBMessage

@property(nonatomic, readwrite) double percent;

@end

#pragma mark - ControlTransport_MarkInPointControlType

typedef GPB_ENUM(ControlTransport_MarkInPointControlType_FieldNumber) {
  ControlTransport_MarkInPointControlType_FieldNumber_Time = 1,
};

GPB_FINAL @interface ControlTransport_MarkInPointControlType : GPBMessage

@property(nonatomic, readwrite) double time;

@end

#pragma mark - ControlTransport_MarkOutPointControlType

typedef GPB_ENUM(ControlTransport_MarkOutPointControlType_FieldNumber) {
  ControlTransport_MarkOutPointControlType_FieldNumber_Time = 1,
};

GPB_FINAL @interface ControlTransport_MarkOutPointControlType : GPBMessage

@property(nonatomic, readwrite) double time;

@end

#pragma mark - ControlTransport_SetScaleModeControlType

typedef GPB_ENUM(ControlTransport_SetScaleModeControlType_FieldNumber) {
  ControlTransport_SetScaleModeControlType_FieldNumber_Mode = 1,
  ControlTransport_SetScaleModeControlType_FieldNumber_Alignment = 2,
};

GPB_FINAL @interface ControlTransport_SetScaleModeControlType : GPBMessage

@property(nonatomic, readwrite) ControlTransport_SetScaleModeControlType_ScaleBehavior mode;

@property(nonatomic, readwrite) ControlTransport_SetScaleModeControlType_ScaleAlignment alignment;

@end

/**
 * Fetches the raw value of a @c ControlTransport_SetScaleModeControlType's @c mode property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t ControlTransport_SetScaleModeControlType_Mode_RawValue(ControlTransport_SetScaleModeControlType *message);
/**
 * Sets the raw value of an @c ControlTransport_SetScaleModeControlType's @c mode property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetControlTransport_SetScaleModeControlType_Mode_RawValue(ControlTransport_SetScaleModeControlType *message, int32_t value);

/**
 * Fetches the raw value of a @c ControlTransport_SetScaleModeControlType's @c alignment property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t ControlTransport_SetScaleModeControlType_Alignment_RawValue(ControlTransport_SetScaleModeControlType *message);
/**
 * Sets the raw value of an @c ControlTransport_SetScaleModeControlType's @c alignment property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetControlTransport_SetScaleModeControlType_Alignment_RawValue(ControlTransport_SetScaleModeControlType *message, int32_t value);

#pragma mark - ControlTransport_SetFlippedModeControlType

typedef GPB_ENUM(ControlTransport_SetFlippedModeControlType_FieldNumber) {
  ControlTransport_SetFlippedModeControlType_FieldNumber_Horizontal = 1,
  ControlTransport_SetFlippedModeControlType_FieldNumber_Vertical = 2,
};

GPB_FINAL @interface ControlTransport_SetFlippedModeControlType : GPBMessage

@property(nonatomic, readwrite) BOOL horizontal;

@property(nonatomic, readwrite) BOOL vertical;

@end

#pragma mark - ControlTransport_SetPlayRateControlType

typedef GPB_ENUM(ControlTransport_SetPlayRateControlType_FieldNumber) {
  ControlTransport_SetPlayRateControlType_FieldNumber_PlayRate = 1,
};

GPB_FINAL @interface ControlTransport_SetPlayRateControlType : GPBMessage

@property(nonatomic, readwrite) double playRate;

@end

#pragma mark - ControlTransport_SetNativeRotationControlType

typedef GPB_ENUM(ControlTransport_SetNativeRotationControlType_FieldNumber) {
  ControlTransport_SetNativeRotationControlType_FieldNumber_Rotation = 1,
};

GPB_FINAL @interface ControlTransport_SetNativeRotationControlType : GPBMessage

@property(nonatomic, readwrite) ControlTransport_SetNativeRotationControlType_NativeRotationType rotation;

@end

/**
 * Fetches the raw value of a @c ControlTransport_SetNativeRotationControlType's @c rotation property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t ControlTransport_SetNativeRotationControlType_Rotation_RawValue(ControlTransport_SetNativeRotationControlType *message);
/**
 * Sets the raw value of an @c ControlTransport_SetNativeRotationControlType's @c rotation property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetControlTransport_SetNativeRotationControlType_Rotation_RawValue(ControlTransport_SetNativeRotationControlType *message, int32_t value);

#pragma mark - ControlTransport_TogglePlaybackControlType

GPB_FINAL @interface ControlTransport_TogglePlaybackControlType : GPBMessage

@end

#pragma mark - ControlTransport_SetEffectsControlType

typedef GPB_ENUM(ControlTransport_SetEffectsControlType_FieldNumber) {
  ControlTransport_SetEffectsControlType_FieldNumber_EffectsArray = 1,
};

GPB_FINAL @interface ControlTransport_SetEffectsControlType : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Effect*> *effectsArray;
/** The number of items in @c effectsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger effectsArray_Count;

@end

#pragma mark - ControlTransport_UpdateEffectControlType

typedef GPB_ENUM(ControlTransport_UpdateEffectControlType_FieldNumber) {
  ControlTransport_UpdateEffectControlType_FieldNumber_Effect = 1,
};

GPB_FINAL @interface ControlTransport_UpdateEffectControlType : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Effect *effect;
/** Test to see if @c effect has been set. */
@property(nonatomic, readwrite) BOOL hasEffect;

@end

#pragma mark - ControlTransport_BeginScrubControlType

GPB_FINAL @interface ControlTransport_BeginScrubControlType : GPBMessage

@end

#pragma mark - ControlTransport_EndScrubControlType

GPB_FINAL @interface ControlTransport_EndScrubControlType : GPBMessage

@end

#pragma mark - ControlTransport_ScrubToTimeControlType

typedef GPB_ENUM(ControlTransport_ScrubToTimeControlType_FieldNumber) {
  ControlTransport_ScrubToTimeControlType_FieldNumber_Time = 1,
};

GPB_FINAL @interface ControlTransport_ScrubToTimeControlType : GPBMessage

@property(nonatomic, readwrite) double time;

@end

#pragma mark - ControlTransport_ScrubToPercentControlType

typedef GPB_ENUM(ControlTransport_ScrubToPercentControlType_FieldNumber) {
  ControlTransport_ScrubToPercentControlType_FieldNumber_Percent = 1,
};

GPB_FINAL @interface ControlTransport_ScrubToPercentControlType : GPBMessage

@property(nonatomic, readwrite) double percent;

@end

#pragma mark - ControlTransport_SetAudioFadeType

typedef GPB_ENUM(ControlTransport_SetAudioFadeType_FieldNumber) {
  ControlTransport_SetAudioFadeType_FieldNumber_FadeInDuration = 1,
  ControlTransport_SetAudioFadeType_FieldNumber_FadeOutDuration = 2,
  ControlTransport_SetAudioFadeType_FieldNumber_ShouldFadeIn = 3,
  ControlTransport_SetAudioFadeType_FieldNumber_ShouldFadeOut = 4,
};

GPB_FINAL @interface ControlTransport_SetAudioFadeType : GPBMessage

@property(nonatomic, readwrite) double fadeInDuration;

@property(nonatomic, readwrite) double fadeOutDuration;

@property(nonatomic, readwrite) BOOL shouldFadeIn;

@property(nonatomic, readwrite) BOOL shouldFadeOut;

@end

#pragma mark - ControlTransport_SetAudioPropertiesType

typedef GPB_ENUM(ControlTransport_SetAudioPropertiesType_FieldNumber) {
  ControlTransport_SetAudioPropertiesType_FieldNumber_AudioProperties = 1,
  ControlTransport_SetAudioPropertiesType_FieldNumber_SoloArray = 2,
};

GPB_FINAL @interface ControlTransport_SetAudioPropertiesType : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Media_AudioProperties *audioProperties;
/** Test to see if @c audioProperties has been set. */
@property(nonatomic, readwrite) BOOL hasAudioProperties;

@property(nonatomic, readwrite, strong, null_resettable) GPBBoolArray *soloArray;
/** The number of items in @c soloArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger soloArray_Count;

@end

#pragma mark - AudioInputSettings

typedef GPB_ENUM(AudioInputSettings_FieldNumber) {
  AudioInputSettings_FieldNumber_InputsArray = 1,
  AudioInputSettings_FieldNumber_TransitionTime = 2,
};

GPB_FINAL @interface AudioInputSettings : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<AudioInput*> *inputsArray;
/** The number of items in @c inputsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger inputsArray_Count;

@property(nonatomic, readwrite) double transitionTime;

@end

#pragma mark - VideoInputSettings

typedef GPB_ENUM(VideoInputSettings_FieldNumber) {
  VideoInputSettings_FieldNumber_InputsArray = 1,
};

GPB_FINAL @interface VideoInputSettings : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<VideoInput*> *inputsArray;
/** The number of items in @c inputsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger inputsArray_Count;

@end

#pragma mark - RecordRequest

typedef GPB_ENUM(RecordRequest_FieldNumber) {
  RecordRequest_FieldNumber_Stream = 1,
  RecordRequest_FieldNumber_WorkingDirectory = 2,
  RecordRequest_FieldNumber_Resi = 3,
};

GPB_FINAL @interface RecordRequest : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Recording_Stream *stream;
/** Test to see if @c stream has been set. */
@property(nonatomic, readwrite) BOOL hasStream;

@property(nonatomic, readwrite, strong, null_resettable) URL *workingDirectory;
/** Test to see if @c workingDirectory has been set. */
@property(nonatomic, readwrite) BOOL hasWorkingDirectory;

@property(nonatomic, readwrite, strong, null_resettable) RecordRequest_Resi *resi;
/** Test to see if @c resi has been set. */
@property(nonatomic, readwrite) BOOL hasResi;

@end

#pragma mark - RecordRequest_Resi

typedef GPB_ENUM(RecordRequest_Resi_FieldNumber) {
  RecordRequest_Resi_FieldNumber_Gop = 1,
  RecordRequest_Resi_FieldNumber_SegmentSize = 2,
  RecordRequest_Resi_FieldNumber_DestinationGroupId = 3,
  RecordRequest_Resi_FieldNumber_BufSize = 4,
  RecordRequest_Resi_FieldNumber_MinRate = 5,
  RecordRequest_Resi_FieldNumber_MaxRate = 6,
  RecordRequest_Resi_FieldNumber_EventName = 7,
  RecordRequest_Resi_FieldNumber_SocialDescription = 8,
};

GPB_FINAL @interface RecordRequest_Resi : GPBMessage

@property(nonatomic, readwrite) uint32_t gop;

@property(nonatomic, readwrite) double segmentSize;

@property(nonatomic, readwrite, copy, null_resettable) NSString *destinationGroupId;

@property(nonatomic, readwrite) uint32_t bufSize;

@property(nonatomic, readwrite) uint32_t minRate;

@property(nonatomic, readwrite) uint32_t maxRate;

@property(nonatomic, readwrite, copy, null_resettable) NSString *eventName;

@property(nonatomic, readwrite, copy, null_resettable) NSString *socialDescription;

@end

#pragma mark - TextSegmentRequest

typedef GPB_ENUM(TextSegmentRequest_FieldNumber) {
  TextSegmentRequest_FieldNumber_SegmentsArray = 1,
  TextSegmentRequest_FieldNumber_StartPosition = 2,
};

GPB_FINAL @interface TextSegmentRequest : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<TextSegmentRequest_Segment*> *segmentsArray;
/** The number of items in @c segmentsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger segmentsArray_Count;

@property(nonatomic, readwrite) double startPosition;

@end

#pragma mark - TextSegmentRequest_Segment

typedef GPB_ENUM(TextSegmentRequest_Segment_FieldNumber) {
  TextSegmentRequest_Segment_FieldNumber_Index = 1,
  TextSegmentRequest_Segment_FieldNumber_Size = 2,
};

GPB_FINAL @interface TextSegmentRequest_Segment : GPBMessage

@property(nonatomic, readwrite) uint32_t index;

@property(nonatomic, readwrite) double size;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)