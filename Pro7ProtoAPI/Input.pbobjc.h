// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: input.proto

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

@class AudioInput_BehaviorMode;
@class AudioInput_BehaviorMode_AutoOff;
@class AudioInput_BehaviorMode_AutoOn;
@class AudioInput_BehaviorMode_Off;
@class AudioInput_BehaviorMode_On;
@class Color;
@class DigitalAudio_Device;
@class Media_VideoDevice;
@class URL;
@class UUID;
@class VideoInput;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum VideoInput_AudioDeviceType

typedef GPB_ENUM(VideoInput_AudioDeviceType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  VideoInput_AudioDeviceType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  VideoInput_AudioDeviceType_AudioDeviceTypeDefault = 0,
  VideoInput_AudioDeviceType_AudioDeviceTypeNone = 1,
  VideoInput_AudioDeviceType_AudioDeviceTypeAlternate = 2,
};

GPBEnumDescriptor *VideoInput_AudioDeviceType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL VideoInput_AudioDeviceType_IsValidValue(int32_t value);

#pragma mark - InputRoot

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
GPB_FINAL @interface InputRoot : GPBRootObject
@end

#pragma mark - VideoInput

typedef GPB_ENUM(VideoInput_FieldNumber) {
  VideoInput_FieldNumber_Uuid = 1,
  VideoInput_FieldNumber_UserDescription = 2,
  VideoInput_FieldNumber_VideoInputDevice = 3,
  VideoInput_FieldNumber_DisplayColor = 4,
  VideoInput_FieldNumber_ThumbnailPath = 5,
  VideoInput_FieldNumber_AudioDevice = 6,
  VideoInput_FieldNumber_VideoDevice = 7,
  VideoInput_FieldNumber_AudioType = 8,
};

typedef GPB_ENUM(VideoInput_AltAudioSource_OneOfCase) {
  VideoInput_AltAudioSource_OneOfCase_GPBUnsetOneOfCase = 0,
  VideoInput_AltAudioSource_OneOfCase_AudioDevice = 6,
  VideoInput_AltAudioSource_OneOfCase_VideoDevice = 7,
};

GPB_FINAL @interface VideoInput : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *uuid;
/** Test to see if @c uuid has been set. */
@property(nonatomic, readwrite) BOOL hasUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userDescription;

@property(nonatomic, readwrite, strong, null_resettable) Media_VideoDevice *videoInputDevice;
/** Test to see if @c videoInputDevice has been set. */
@property(nonatomic, readwrite) BOOL hasVideoInputDevice;

@property(nonatomic, readwrite, strong, null_resettable) Color *displayColor;
/** Test to see if @c displayColor has been set. */
@property(nonatomic, readwrite) BOOL hasDisplayColor;

@property(nonatomic, readwrite, strong, null_resettable) URL *thumbnailPath;
/** Test to see if @c thumbnailPath has been set. */
@property(nonatomic, readwrite) BOOL hasThumbnailPath;

@property(nonatomic, readwrite) VideoInput_AudioDeviceType audioType;

@property(nonatomic, readonly) VideoInput_AltAudioSource_OneOfCase altAudioSourceOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) DigitalAudio_Device *audioDevice;

@property(nonatomic, readwrite, strong, null_resettable) Media_VideoDevice *videoDevice;

@end

/**
 * Fetches the raw value of a @c VideoInput's @c audioType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t VideoInput_AudioType_RawValue(VideoInput *message);
/**
 * Sets the raw value of an @c VideoInput's @c audioType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetVideoInput_AudioType_RawValue(VideoInput *message, int32_t value);

/**
 * Clears whatever value was set for the oneof 'altAudioSource'.
 **/
void VideoInput_ClearAltAudioSourceOneOfCase(VideoInput *message);

#pragma mark - VideoInput_SettingsDocument

typedef GPB_ENUM(VideoInput_SettingsDocument_FieldNumber) {
  VideoInput_SettingsDocument_FieldNumber_InputsArray = 1,
};

GPB_FINAL @interface VideoInput_SettingsDocument : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<VideoInput*> *inputsArray;
/** The number of items in @c inputsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger inputsArray_Count;

@end

#pragma mark - AudioInput

typedef GPB_ENUM(AudioInput_FieldNumber) {
  AudioInput_FieldNumber_Uuid = 1,
  AudioInput_FieldNumber_UserDescription = 2,
  AudioInput_FieldNumber_AudioDevice = 3,
  AudioInput_FieldNumber_VideoDevice = 4,
  AudioInput_FieldNumber_BehaviorMode = 5,
};

typedef GPB_ENUM(AudioInput_Source_OneOfCase) {
  AudioInput_Source_OneOfCase_GPBUnsetOneOfCase = 0,
  AudioInput_Source_OneOfCase_AudioDevice = 3,
  AudioInput_Source_OneOfCase_VideoDevice = 4,
};

GPB_FINAL @interface AudioInput : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *uuid;
/** Test to see if @c uuid has been set. */
@property(nonatomic, readwrite) BOOL hasUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userDescription;

@property(nonatomic, readwrite, strong, null_resettable) AudioInput_BehaviorMode *behaviorMode;
/** Test to see if @c behaviorMode has been set. */
@property(nonatomic, readwrite) BOOL hasBehaviorMode;

@property(nonatomic, readonly) AudioInput_Source_OneOfCase sourceOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) DigitalAudio_Device *audioDevice;

@property(nonatomic, readwrite, strong, null_resettable) Media_VideoDevice *videoDevice;

@end

/**
 * Clears whatever value was set for the oneof 'source'.
 **/
void AudioInput_ClearSourceOneOfCase(AudioInput *message);

#pragma mark - AudioInput_BehaviorMode

typedef GPB_ENUM(AudioInput_BehaviorMode_FieldNumber) {
  AudioInput_BehaviorMode_FieldNumber_On = 1,
  AudioInput_BehaviorMode_FieldNumber_Off = 2,
  AudioInput_BehaviorMode_FieldNumber_AutoOn = 3,
  AudioInput_BehaviorMode_FieldNumber_AutoOff = 4,
};

typedef GPB_ENUM(AudioInput_BehaviorMode_Mode_OneOfCase) {
  AudioInput_BehaviorMode_Mode_OneOfCase_GPBUnsetOneOfCase = 0,
  AudioInput_BehaviorMode_Mode_OneOfCase_On = 1,
  AudioInput_BehaviorMode_Mode_OneOfCase_Off = 2,
  AudioInput_BehaviorMode_Mode_OneOfCase_AutoOn = 3,
  AudioInput_BehaviorMode_Mode_OneOfCase_AutoOff = 4,
};

GPB_FINAL @interface AudioInput_BehaviorMode : GPBMessage

@property(nonatomic, readonly) AudioInput_BehaviorMode_Mode_OneOfCase modeOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) AudioInput_BehaviorMode_On *on;

@property(nonatomic, readwrite, strong, null_resettable) AudioInput_BehaviorMode_Off *off;

@property(nonatomic, readwrite, strong, null_resettable) AudioInput_BehaviorMode_AutoOn *autoOn;

@property(nonatomic, readwrite, strong, null_resettable) AudioInput_BehaviorMode_AutoOff *autoOff;

@end

/**
 * Clears whatever value was set for the oneof 'mode'.
 **/
void AudioInput_BehaviorMode_ClearModeOneOfCase(AudioInput_BehaviorMode *message);

#pragma mark - AudioInput_BehaviorMode_On

GPB_FINAL @interface AudioInput_BehaviorMode_On : GPBMessage

@end

#pragma mark - AudioInput_BehaviorMode_Off

GPB_FINAL @interface AudioInput_BehaviorMode_Off : GPBMessage

@end

#pragma mark - AudioInput_BehaviorMode_AutoOff

GPB_FINAL @interface AudioInput_BehaviorMode_AutoOff : GPBMessage

@end

#pragma mark - AudioInput_BehaviorMode_AutoOn

typedef GPB_ENUM(AudioInput_BehaviorMode_AutoOn_FieldNumber) {
  AudioInput_BehaviorMode_AutoOn_FieldNumber_LinkedVideoInputsArray = 1,
};

GPB_FINAL @interface AudioInput_BehaviorMode_AutoOn : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GPBUInt32Array *linkedVideoInputsArray;
/** The number of items in @c linkedVideoInputsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger linkedVideoInputsArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
