// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: timers.proto

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
@class Clock;
@class Timer;
@class Timer_Configuration;
@class Timer_Configuration_TimerTypeCountdown;
@class Timer_Configuration_TimerTypeCountdownToTime;
@class Timer_Configuration_TimerTypeElapsedTime;
@class UUID;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum Clock_Format_DateFormatterStyle

typedef GPB_ENUM(Clock_Format_DateFormatterStyle) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Clock_Format_DateFormatterStyle_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Clock_Format_DateFormatterStyle_DateFormatterStyleNone = 0,
  Clock_Format_DateFormatterStyle_DateFormatterStyleShort = 1,
  Clock_Format_DateFormatterStyle_DateFormatterStyleMedium = 2,
  Clock_Format_DateFormatterStyle_DateFormatterStyleLong = 3,
  Clock_Format_DateFormatterStyle_DateFormatterStyleFull = 4,
};

GPBEnumDescriptor *Clock_Format_DateFormatterStyle_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Clock_Format_DateFormatterStyle_IsValidValue(int32_t value);

#pragma mark - Enum Timer_Format_Style

typedef GPB_ENUM(Timer_Format_Style) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Timer_Format_Style_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Timer_Format_Style_StyeNone = 0,
  Timer_Format_Style_StyleShort = 1,
  Timer_Format_Style_StyleLong = 2,
  Timer_Format_Style_StyleRemoveShort = 3,
  Timer_Format_Style_StyleRemoveLong = 4,
};

GPBEnumDescriptor *Timer_Format_Style_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Timer_Format_Style_IsValidValue(int32_t value);

#pragma mark - Enum Timer_Configuration_TimerTypeCountdownToTime_TimePeriod

typedef GPB_ENUM(Timer_Configuration_TimerTypeCountdownToTime_TimePeriod) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriodAm = 0,
  Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriodPm = 1,
  Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriod24 = 2,
};

GPBEnumDescriptor *Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_IsValidValue(int32_t value);

#pragma mark - TimersRoot

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
GPB_FINAL @interface TimersRoot : GPBRootObject
@end

#pragma mark - Clock

typedef GPB_ENUM(Clock_FieldNumber) {
  Clock_FieldNumber_Format = 1,
};

GPB_FINAL @interface Clock : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *format;

@end

#pragma mark - Clock_Format

typedef GPB_ENUM(Clock_Format_FieldNumber) {
  Clock_Format_FieldNumber_DateType = 2,
  Clock_Format_FieldNumber_TimeFormat = 3,
  Clock_Format_FieldNumber_MilitaryTimeEnabled = 4,
};

GPB_FINAL @interface Clock_Format : GPBMessage

@property(nonatomic, readwrite) Clock_Format_DateFormatterStyle dateType;

@property(nonatomic, readwrite) Clock_Format_DateFormatterStyle timeFormat;

@property(nonatomic, readwrite) BOOL militaryTimeEnabled;

@end

/**
 * Fetches the raw value of a @c Clock_Format's @c dateType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Clock_Format_DateType_RawValue(Clock_Format *message);
/**
 * Sets the raw value of an @c Clock_Format's @c dateType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetClock_Format_DateType_RawValue(Clock_Format *message, int32_t value);

/**
 * Fetches the raw value of a @c Clock_Format's @c timeFormat property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Clock_Format_TimeFormat_RawValue(Clock_Format *message);
/**
 * Sets the raw value of an @c Clock_Format's @c timeFormat property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetClock_Format_TimeFormat_RawValue(Clock_Format *message, int32_t value);

#pragma mark - Timer

typedef GPB_ENUM(Timer_FieldNumber) {
  Timer_FieldNumber_Uuid = 1,
  Timer_FieldNumber_Name = 2,
  Timer_FieldNumber_Configuration = 10,
};

GPB_FINAL @interface Timer : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *uuid;
/** Test to see if @c uuid has been set. */
@property(nonatomic, readwrite) BOOL hasUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, strong, null_resettable) Timer_Configuration *configuration;
/** Test to see if @c configuration has been set. */
@property(nonatomic, readwrite) BOOL hasConfiguration;

@end

#pragma mark - Timer_Format

typedef GPB_ENUM(Timer_Format_FieldNumber) {
  Timer_Format_FieldNumber_Hour = 1,
  Timer_Format_FieldNumber_Minute = 2,
  Timer_Format_FieldNumber_Second = 3,
  Timer_Format_FieldNumber_Millisecond = 4,
  Timer_Format_FieldNumber_IsWallClockTime = 5,
  Timer_Format_FieldNumber_Is24HourTime = 6,
  Timer_Format_FieldNumber_ShowMillisecondsUnderMinuteOnly = 7,
};

GPB_FINAL @interface Timer_Format : GPBMessage

@property(nonatomic, readwrite) Timer_Format_Style hour;

@property(nonatomic, readwrite) Timer_Format_Style minute;

@property(nonatomic, readwrite) Timer_Format_Style second;

@property(nonatomic, readwrite) Timer_Format_Style millisecond;

@property(nonatomic, readwrite) BOOL isWallClockTime;

@property(nonatomic, readwrite) BOOL is24HourTime;

@property(nonatomic, readwrite) BOOL showMillisecondsUnderMinuteOnly;

@end

/**
 * Fetches the raw value of a @c Timer_Format's @c hour property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Timer_Format_Hour_RawValue(Timer_Format *message);
/**
 * Sets the raw value of an @c Timer_Format's @c hour property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTimer_Format_Hour_RawValue(Timer_Format *message, int32_t value);

/**
 * Fetches the raw value of a @c Timer_Format's @c minute property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Timer_Format_Minute_RawValue(Timer_Format *message);
/**
 * Sets the raw value of an @c Timer_Format's @c minute property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTimer_Format_Minute_RawValue(Timer_Format *message, int32_t value);

/**
 * Fetches the raw value of a @c Timer_Format's @c second property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Timer_Format_Second_RawValue(Timer_Format *message);
/**
 * Sets the raw value of an @c Timer_Format's @c second property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTimer_Format_Second_RawValue(Timer_Format *message, int32_t value);

/**
 * Fetches the raw value of a @c Timer_Format's @c millisecond property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Timer_Format_Millisecond_RawValue(Timer_Format *message);
/**
 * Sets the raw value of an @c Timer_Format's @c millisecond property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTimer_Format_Millisecond_RawValue(Timer_Format *message, int32_t value);

#pragma mark - Timer_Configuration

typedef GPB_ENUM(Timer_Configuration_FieldNumber) {
  Timer_Configuration_FieldNumber_Countdown = 1,
  Timer_Configuration_FieldNumber_CountdownToTime = 2,
  Timer_Configuration_FieldNumber_ElapsedTime = 3,
  Timer_Configuration_FieldNumber_AllowsOverrun = 4,
};

typedef GPB_ENUM(Timer_Configuration_TimerType_OneOfCase) {
  Timer_Configuration_TimerType_OneOfCase_GPBUnsetOneOfCase = 0,
  Timer_Configuration_TimerType_OneOfCase_Countdown = 1,
  Timer_Configuration_TimerType_OneOfCase_CountdownToTime = 2,
  Timer_Configuration_TimerType_OneOfCase_ElapsedTime = 3,
};

GPB_FINAL @interface Timer_Configuration : GPBMessage

@property(nonatomic, readwrite) BOOL allowsOverrun;

@property(nonatomic, readonly) Timer_Configuration_TimerType_OneOfCase timerTypeOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) Timer_Configuration_TimerTypeCountdown *countdown;

@property(nonatomic, readwrite, strong, null_resettable) Timer_Configuration_TimerTypeCountdownToTime *countdownToTime;

@property(nonatomic, readwrite, strong, null_resettable) Timer_Configuration_TimerTypeElapsedTime *elapsedTime;

@end

/**
 * Clears whatever value was set for the oneof 'timerType'.
 **/
void Timer_Configuration_ClearTimerTypeOneOfCase(Timer_Configuration *message);

#pragma mark - Timer_Configuration_TimerTypeCountdown

typedef GPB_ENUM(Timer_Configuration_TimerTypeCountdown_FieldNumber) {
  Timer_Configuration_TimerTypeCountdown_FieldNumber_Duration = 1,
};

GPB_FINAL @interface Timer_Configuration_TimerTypeCountdown : GPBMessage

@property(nonatomic, readwrite) double duration;

@end

#pragma mark - Timer_Configuration_TimerTypeCountdownToTime

typedef GPB_ENUM(Timer_Configuration_TimerTypeCountdownToTime_FieldNumber) {
  Timer_Configuration_TimerTypeCountdownToTime_FieldNumber_TimeOfDay = 1,
  Timer_Configuration_TimerTypeCountdownToTime_FieldNumber_Period = 2,
};

GPB_FINAL @interface Timer_Configuration_TimerTypeCountdownToTime : GPBMessage

@property(nonatomic, readwrite) double timeOfDay;

@property(nonatomic, readwrite) Timer_Configuration_TimerTypeCountdownToTime_TimePeriod period;

@end

/**
 * Fetches the raw value of a @c Timer_Configuration_TimerTypeCountdownToTime's @c period property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Timer_Configuration_TimerTypeCountdownToTime_Period_RawValue(Timer_Configuration_TimerTypeCountdownToTime *message);
/**
 * Sets the raw value of an @c Timer_Configuration_TimerTypeCountdownToTime's @c period property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTimer_Configuration_TimerTypeCountdownToTime_Period_RawValue(Timer_Configuration_TimerTypeCountdownToTime *message, int32_t value);

#pragma mark - Timer_Configuration_TimerTypeElapsedTime

typedef GPB_ENUM(Timer_Configuration_TimerTypeElapsedTime_FieldNumber) {
  Timer_Configuration_TimerTypeElapsedTime_FieldNumber_StartTime = 1,
  Timer_Configuration_TimerTypeElapsedTime_FieldNumber_EndTime = 2,
  Timer_Configuration_TimerTypeElapsedTime_FieldNumber_HasEndTime = 3,
};

GPB_FINAL @interface Timer_Configuration_TimerTypeElapsedTime : GPBMessage

@property(nonatomic, readwrite) double startTime;

@property(nonatomic, readwrite) double endTime;

@property(nonatomic, readwrite) BOOL hasEndTime;

@end

#pragma mark - TimersDocument

typedef GPB_ENUM(TimersDocument_FieldNumber) {
  TimersDocument_FieldNumber_ApplicationInfo = 1,
  TimersDocument_FieldNumber_Clock = 2,
  TimersDocument_FieldNumber_TimersArray = 3,
};

GPB_FINAL @interface TimersDocument : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) ApplicationInfo *applicationInfo;
/** Test to see if @c applicationInfo has been set. */
@property(nonatomic, readwrite) BOOL hasApplicationInfo;

@property(nonatomic, readwrite, strong, null_resettable) Clock *clock;
/** Test to see if @c clock has been set. */
@property(nonatomic, readwrite) BOOL hasClock;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Timer*> *timersArray;
/** The number of items in @c timersArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger timersArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
