// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: digitalAudio.proto

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

@class DigitalAudio_Bus;
@class DigitalAudio_Device;
@class DigitalAudio_Device_Channel;
@class DigitalAudio_Device_Format;
@class DigitalAudio_Device_Map;
@class DigitalAudio_Device_Routing;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum DigitalAudio_Device_Format_Type

typedef GPB_ENUM(DigitalAudio_Device_Format_Type) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  DigitalAudio_Device_Format_Type_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  DigitalAudio_Device_Format_Type_TypeInt = 0,
  DigitalAudio_Device_Format_Type_TypeFloat = 1,
};

GPBEnumDescriptor *DigitalAudio_Device_Format_Type_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL DigitalAudio_Device_Format_Type_IsValidValue(int32_t value);

#pragma mark - DigitalAudioRoot

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
GPB_FINAL @interface DigitalAudioRoot : GPBRootObject
@end

#pragma mark - DigitalAudio

GPB_FINAL @interface DigitalAudio : GPBMessage

@end

#pragma mark - DigitalAudio_Setup

typedef GPB_ENUM(DigitalAudio_Setup_FieldNumber) {
  DigitalAudio_Setup_FieldNumber_BusesArray = 1,
  DigitalAudio_Setup_FieldNumber_MonitorDevice = 2,
  DigitalAudio_Setup_FieldNumber_MainOutputDevice = 3,
  DigitalAudio_Setup_FieldNumber_EnableSdiNdiDevice = 4,
  DigitalAudio_Setup_FieldNumber_SdiNdiDevice = 5,
  DigitalAudio_Setup_FieldNumber_MonitorOnMains = 6,
  DigitalAudio_Setup_FieldNumber_DisableMainOutputDevice = 7,
};

GPB_FINAL @interface DigitalAudio_Setup : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<DigitalAudio_Bus*> *busesArray;
/** The number of items in @c busesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger busesArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) DigitalAudio_Device *monitorDevice;
/** Test to see if @c monitorDevice has been set. */
@property(nonatomic, readwrite) BOOL hasMonitorDevice;

@property(nonatomic, readwrite, strong, null_resettable) DigitalAudio_Device *mainOutputDevice;
/** Test to see if @c mainOutputDevice has been set. */
@property(nonatomic, readwrite) BOOL hasMainOutputDevice;

@property(nonatomic, readwrite) BOOL enableSdiNdiDevice;

@property(nonatomic, readwrite, strong, null_resettable) DigitalAudio_Device *sdiNdiDevice;
/** Test to see if @c sdiNdiDevice has been set. */
@property(nonatomic, readwrite) BOOL hasSdiNdiDevice;

@property(nonatomic, readwrite) BOOL monitorOnMains;

@property(nonatomic, readwrite) BOOL disableMainOutputDevice;

@end

#pragma mark - DigitalAudio_Bus

typedef GPB_ENUM(DigitalAudio_Bus_FieldNumber) {
  DigitalAudio_Bus_FieldNumber_Name = 1,
  DigitalAudio_Bus_FieldNumber_Muted = 2,
  DigitalAudio_Bus_FieldNumber_Solo = 3,
  DigitalAudio_Bus_FieldNumber_TestTone = 4,
  DigitalAudio_Bus_FieldNumber_MasterLevel = 5,
};

GPB_FINAL @interface DigitalAudio_Bus : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite) BOOL muted;

@property(nonatomic, readwrite) BOOL solo;

@property(nonatomic, readwrite) BOOL testTone;

@property(nonatomic, readwrite) double masterLevel;

@end

#pragma mark - DigitalAudio_Device

typedef GPB_ENUM(DigitalAudio_Device_FieldNumber) {
  DigitalAudio_Device_FieldNumber_Name = 1,
  DigitalAudio_Device_FieldNumber_RenderId = 2,
  DigitalAudio_Device_FieldNumber_FormatsArray = 3,
  DigitalAudio_Device_FieldNumber_Routing = 4,
};

GPB_FINAL @interface DigitalAudio_Device : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, copy, null_resettable) NSString *renderId;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<DigitalAudio_Device_Format*> *formatsArray;
/** The number of items in @c formatsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger formatsArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) DigitalAudio_Device_Routing *routing;
/** Test to see if @c routing has been set. */
@property(nonatomic, readwrite) BOOL hasRouting;

@end

#pragma mark - DigitalAudio_Device_Format

typedef GPB_ENUM(DigitalAudio_Device_Format_FieldNumber) {
  DigitalAudio_Device_Format_FieldNumber_SampleRate = 1,
  DigitalAudio_Device_Format_FieldNumber_BitDepth = 2,
  DigitalAudio_Device_Format_FieldNumber_Type = 3,
};

GPB_FINAL @interface DigitalAudio_Device_Format : GPBMessage

@property(nonatomic, readwrite) uint32_t sampleRate;

@property(nonatomic, readwrite) uint32_t bitDepth;

@property(nonatomic, readwrite) DigitalAudio_Device_Format_Type type;

@end

/**
 * Fetches the raw value of a @c DigitalAudio_Device_Format's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t DigitalAudio_Device_Format_Type_RawValue(DigitalAudio_Device_Format *message);
/**
 * Sets the raw value of an @c DigitalAudio_Device_Format's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetDigitalAudio_Device_Format_Type_RawValue(DigitalAudio_Device_Format *message, int32_t value);

#pragma mark - DigitalAudio_Device_Map

typedef GPB_ENUM(DigitalAudio_Device_Map_FieldNumber) {
  DigitalAudio_Device_Map_FieldNumber_ChannelIndex = 1,
  DigitalAudio_Device_Map_FieldNumber_MappedIndicesArray = 2,
};

GPB_FINAL @interface DigitalAudio_Device_Map : GPBMessage

@property(nonatomic, readwrite) uint32_t channelIndex;

@property(nonatomic, readwrite, strong, null_resettable) GPBUInt32Array *mappedIndicesArray;
/** The number of items in @c mappedIndicesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger mappedIndicesArray_Count;

@end

#pragma mark - DigitalAudio_Device_Channel

typedef GPB_ENUM(DigitalAudio_Device_Channel_FieldNumber) {
  DigitalAudio_Device_Channel_FieldNumber_MuteEnable = 1,
  DigitalAudio_Device_Channel_FieldNumber_SoloEnable = 2,
  DigitalAudio_Device_Channel_FieldNumber_ToneEnable = 3,
  DigitalAudio_Device_Channel_FieldNumber_AudioDelay = 4,
  DigitalAudio_Device_Channel_FieldNumber_Level = 5,
};

GPB_FINAL @interface DigitalAudio_Device_Channel : GPBMessage

@property(nonatomic, readwrite) BOOL muteEnable;

@property(nonatomic, readwrite) BOOL soloEnable;

@property(nonatomic, readwrite) BOOL toneEnable;

@property(nonatomic, readwrite) double audioDelay;

@property(nonatomic, readwrite) double level;

@end

#pragma mark - DigitalAudio_Device_Routing

typedef GPB_ENUM(DigitalAudio_Device_Routing_FieldNumber) {
  DigitalAudio_Device_Routing_FieldNumber_ChannelsArray = 1,
  DigitalAudio_Device_Routing_FieldNumber_MapArray = 2,
  DigitalAudio_Device_Routing_FieldNumber_IsCustomMap = 3,
  DigitalAudio_Device_Routing_FieldNumber_MasterChannel = 4,
};

GPB_FINAL @interface DigitalAudio_Device_Routing : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<DigitalAudio_Device_Channel*> *channelsArray;
/** The number of items in @c channelsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger channelsArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<DigitalAudio_Device_Map*> *mapArray;
/** The number of items in @c mapArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger mapArray_Count;

@property(nonatomic, readwrite) BOOL isCustomMap;

@property(nonatomic, readwrite, strong, null_resettable) DigitalAudio_Device_Channel *masterChannel;
/** Test to see if @c masterChannel has been set. */
@property(nonatomic, readwrite) BOOL hasMasterChannel;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
