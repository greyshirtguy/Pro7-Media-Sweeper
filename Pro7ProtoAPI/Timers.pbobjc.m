// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: timers.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#import "Timers.pbobjc.h"
#import "BasicTypes.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(ApplicationInfo);
GPBObjCClassDeclaration(Clock);
GPBObjCClassDeclaration(Timer);
GPBObjCClassDeclaration(Timer_Configuration);
GPBObjCClassDeclaration(Timer_Configuration_TimerTypeCountdown);
GPBObjCClassDeclaration(Timer_Configuration_TimerTypeCountdownToTime);
GPBObjCClassDeclaration(Timer_Configuration_TimerTypeElapsedTime);
GPBObjCClassDeclaration(UUID);

#pragma mark - TimersRoot

@implementation TimersRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - TimersRoot_FileDescriptor

static GPBFileDescriptor *TimersRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"rv.data"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Clock

@implementation Clock

@dynamic format;

typedef struct Clock__storage_ {
  uint32_t _has_storage_[1];
  NSString *format;
} Clock__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "format",
        .dataTypeSpecific.clazz = Nil,
        .number = Clock_FieldNumber_Format,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Clock__storage_, format),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Clock class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Clock__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Clock_Format

@implementation Clock_Format

@dynamic dateType;
@dynamic timeFormat;
@dynamic militaryTimeEnabled;

typedef struct Clock_Format__storage_ {
  uint32_t _has_storage_[1];
  Clock_Format_DateFormatterStyle dateType;
  Clock_Format_DateFormatterStyle timeFormat;
} Clock_Format__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "dateType",
        .dataTypeSpecific.enumDescFunc = Clock_Format_DateFormatterStyle_EnumDescriptor,
        .number = Clock_Format_FieldNumber_DateType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Clock_Format__storage_, dateType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "timeFormat",
        .dataTypeSpecific.enumDescFunc = Clock_Format_DateFormatterStyle_EnumDescriptor,
        .number = Clock_Format_FieldNumber_TimeFormat,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Clock_Format__storage_, timeFormat),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "militaryTimeEnabled",
        .dataTypeSpecific.clazz = Nil,
        .number = Clock_Format_FieldNumber_MilitaryTimeEnabled,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Clock_Format class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Clock_Format__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Clock)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Clock_Format_DateType_RawValue(Clock_Format *message) {
  GPBDescriptor *descriptor = [Clock_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Clock_Format_FieldNumber_DateType];
  return GPBGetMessageRawEnumField(message, field);
}

void SetClock_Format_DateType_RawValue(Clock_Format *message, int32_t value) {
  GPBDescriptor *descriptor = [Clock_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Clock_Format_FieldNumber_DateType];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t Clock_Format_TimeFormat_RawValue(Clock_Format *message) {
  GPBDescriptor *descriptor = [Clock_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Clock_Format_FieldNumber_TimeFormat];
  return GPBGetMessageRawEnumField(message, field);
}

void SetClock_Format_TimeFormat_RawValue(Clock_Format *message, int32_t value) {
  GPBDescriptor *descriptor = [Clock_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Clock_Format_FieldNumber_TimeFormat];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - Enum Clock_Format_DateFormatterStyle

GPBEnumDescriptor *Clock_Format_DateFormatterStyle_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "DateFormatterStyleNone\000DateFormatterStyl"
        "eShort\000DateFormatterStyleMedium\000DateForm"
        "atterStyleLong\000DateFormatterStyleFull\000";
    static const int32_t values[] = {
        Clock_Format_DateFormatterStyle_DateFormatterStyleNone,
        Clock_Format_DateFormatterStyle_DateFormatterStyleShort,
        Clock_Format_DateFormatterStyle_DateFormatterStyleMedium,
        Clock_Format_DateFormatterStyle_DateFormatterStyleLong,
        Clock_Format_DateFormatterStyle_DateFormatterStyleFull,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Clock_Format_DateFormatterStyle)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Clock_Format_DateFormatterStyle_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Clock_Format_DateFormatterStyle_IsValidValue(int32_t value__) {
  switch (value__) {
    case Clock_Format_DateFormatterStyle_DateFormatterStyleNone:
    case Clock_Format_DateFormatterStyle_DateFormatterStyleShort:
    case Clock_Format_DateFormatterStyle_DateFormatterStyleMedium:
    case Clock_Format_DateFormatterStyle_DateFormatterStyleLong:
    case Clock_Format_DateFormatterStyle_DateFormatterStyleFull:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Timer

@implementation Timer

@dynamic hasUuid, uuid;
@dynamic name;
@dynamic hasConfiguration, configuration;

typedef struct Timer__storage_ {
  uint32_t _has_storage_[1];
  UUID *uuid;
  NSString *name;
  Timer_Configuration *configuration;
} Timer__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Timer_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Timer__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Timer__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "configuration",
        .dataTypeSpecific.clazz = GPBObjCClass(Timer_Configuration),
        .number = Timer_FieldNumber_Configuration,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Timer__storage_, configuration),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Timer class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Timer__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Timer_Format

@implementation Timer_Format

@dynamic hour;
@dynamic minute;
@dynamic second;
@dynamic millisecond;
@dynamic isWallClockTime;
@dynamic is24HourTime;
@dynamic showMillisecondsUnderMinuteOnly;

typedef struct Timer_Format__storage_ {
  uint32_t _has_storage_[1];
  Timer_Format_Style hour;
  Timer_Format_Style minute;
  Timer_Format_Style second;
  Timer_Format_Style millisecond;
} Timer_Format__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "hour",
        .dataTypeSpecific.enumDescFunc = Timer_Format_Style_EnumDescriptor,
        .number = Timer_Format_FieldNumber_Hour,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Timer_Format__storage_, hour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "minute",
        .dataTypeSpecific.enumDescFunc = Timer_Format_Style_EnumDescriptor,
        .number = Timer_Format_FieldNumber_Minute,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Timer_Format__storage_, minute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "second",
        .dataTypeSpecific.enumDescFunc = Timer_Format_Style_EnumDescriptor,
        .number = Timer_Format_FieldNumber_Second,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Timer_Format__storage_, second),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "millisecond",
        .dataTypeSpecific.enumDescFunc = Timer_Format_Style_EnumDescriptor,
        .number = Timer_Format_FieldNumber_Millisecond,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Timer_Format__storage_, millisecond),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "isWallClockTime",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Format_FieldNumber_IsWallClockTime,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "is24HourTime",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Format_FieldNumber_Is24HourTime,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "showMillisecondsUnderMinuteOnly",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Format_FieldNumber_ShowMillisecondsUnderMinuteOnly,
        .hasIndex = 8,
        .offset = 9,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Timer_Format class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Timer_Format__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\006\002\202\244\244\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Timer)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Timer_Format_Hour_RawValue(Timer_Format *message) {
  GPBDescriptor *descriptor = [Timer_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Format_FieldNumber_Hour];
  return GPBGetMessageRawEnumField(message, field);
}

void SetTimer_Format_Hour_RawValue(Timer_Format *message, int32_t value) {
  GPBDescriptor *descriptor = [Timer_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Format_FieldNumber_Hour];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t Timer_Format_Minute_RawValue(Timer_Format *message) {
  GPBDescriptor *descriptor = [Timer_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Format_FieldNumber_Minute];
  return GPBGetMessageRawEnumField(message, field);
}

void SetTimer_Format_Minute_RawValue(Timer_Format *message, int32_t value) {
  GPBDescriptor *descriptor = [Timer_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Format_FieldNumber_Minute];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t Timer_Format_Second_RawValue(Timer_Format *message) {
  GPBDescriptor *descriptor = [Timer_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Format_FieldNumber_Second];
  return GPBGetMessageRawEnumField(message, field);
}

void SetTimer_Format_Second_RawValue(Timer_Format *message, int32_t value) {
  GPBDescriptor *descriptor = [Timer_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Format_FieldNumber_Second];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t Timer_Format_Millisecond_RawValue(Timer_Format *message) {
  GPBDescriptor *descriptor = [Timer_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Format_FieldNumber_Millisecond];
  return GPBGetMessageRawEnumField(message, field);
}

void SetTimer_Format_Millisecond_RawValue(Timer_Format *message, int32_t value) {
  GPBDescriptor *descriptor = [Timer_Format descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Format_FieldNumber_Millisecond];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - Enum Timer_Format_Style

GPBEnumDescriptor *Timer_Format_Style_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "StyeNone\000StyleShort\000StyleLong\000StyleRemov"
        "eShort\000StyleRemoveLong\000";
    static const int32_t values[] = {
        Timer_Format_Style_StyeNone,
        Timer_Format_Style_StyleShort,
        Timer_Format_Style_StyleLong,
        Timer_Format_Style_StyleRemoveShort,
        Timer_Format_Style_StyleRemoveLong,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Timer_Format_Style)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Timer_Format_Style_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Timer_Format_Style_IsValidValue(int32_t value__) {
  switch (value__) {
    case Timer_Format_Style_StyeNone:
    case Timer_Format_Style_StyleShort:
    case Timer_Format_Style_StyleLong:
    case Timer_Format_Style_StyleRemoveShort:
    case Timer_Format_Style_StyleRemoveLong:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Timer_Configuration

@implementation Timer_Configuration

@dynamic timerTypeOneOfCase;
@dynamic allowsOverrun;
@dynamic countdown;
@dynamic countdownToTime;
@dynamic elapsedTime;

typedef struct Timer_Configuration__storage_ {
  uint32_t _has_storage_[2];
  Timer_Configuration_TimerTypeCountdown *countdown;
  Timer_Configuration_TimerTypeCountdownToTime *countdownToTime;
  Timer_Configuration_TimerTypeElapsedTime *elapsedTime;
} Timer_Configuration__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "countdown",
        .dataTypeSpecific.clazz = GPBObjCClass(Timer_Configuration_TimerTypeCountdown),
        .number = Timer_Configuration_FieldNumber_Countdown,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Timer_Configuration__storage_, countdown),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "countdownToTime",
        .dataTypeSpecific.clazz = GPBObjCClass(Timer_Configuration_TimerTypeCountdownToTime),
        .number = Timer_Configuration_FieldNumber_CountdownToTime,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Timer_Configuration__storage_, countdownToTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "elapsedTime",
        .dataTypeSpecific.clazz = GPBObjCClass(Timer_Configuration_TimerTypeElapsedTime),
        .number = Timer_Configuration_FieldNumber_ElapsedTime,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Timer_Configuration__storage_, elapsedTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "allowsOverrun",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Configuration_FieldNumber_AllowsOverrun,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Timer_Configuration class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Timer_Configuration__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    static const char *oneofs[] = {
      "timerType",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Timer)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void Timer_Configuration_ClearTimerTypeOneOfCase(Timer_Configuration *message) {
  GPBDescriptor *descriptor = [Timer_Configuration descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBClearOneof(message, oneof);
}
#pragma mark - Timer_Configuration_TimerTypeCountdown

@implementation Timer_Configuration_TimerTypeCountdown

@dynamic duration;

typedef struct Timer_Configuration_TimerTypeCountdown__storage_ {
  uint32_t _has_storage_[1];
  double duration;
} Timer_Configuration_TimerTypeCountdown__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "duration",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Configuration_TimerTypeCountdown_FieldNumber_Duration,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Timer_Configuration_TimerTypeCountdown__storage_, duration),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Timer_Configuration_TimerTypeCountdown class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Timer_Configuration_TimerTypeCountdown__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Timer_Configuration)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Timer_Configuration_TimerTypeCountdownToTime

@implementation Timer_Configuration_TimerTypeCountdownToTime

@dynamic timeOfDay;
@dynamic period;

typedef struct Timer_Configuration_TimerTypeCountdownToTime__storage_ {
  uint32_t _has_storage_[1];
  Timer_Configuration_TimerTypeCountdownToTime_TimePeriod period;
  double timeOfDay;
} Timer_Configuration_TimerTypeCountdownToTime__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "timeOfDay",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Configuration_TimerTypeCountdownToTime_FieldNumber_TimeOfDay,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Timer_Configuration_TimerTypeCountdownToTime__storage_, timeOfDay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "period",
        .dataTypeSpecific.enumDescFunc = Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_EnumDescriptor,
        .number = Timer_Configuration_TimerTypeCountdownToTime_FieldNumber_Period,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Timer_Configuration_TimerTypeCountdownToTime__storage_, period),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Timer_Configuration_TimerTypeCountdownToTime class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Timer_Configuration_TimerTypeCountdownToTime__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Timer_Configuration)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Timer_Configuration_TimerTypeCountdownToTime_Period_RawValue(Timer_Configuration_TimerTypeCountdownToTime *message) {
  GPBDescriptor *descriptor = [Timer_Configuration_TimerTypeCountdownToTime descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Configuration_TimerTypeCountdownToTime_FieldNumber_Period];
  return GPBGetMessageRawEnumField(message, field);
}

void SetTimer_Configuration_TimerTypeCountdownToTime_Period_RawValue(Timer_Configuration_TimerTypeCountdownToTime *message, int32_t value) {
  GPBDescriptor *descriptor = [Timer_Configuration_TimerTypeCountdownToTime descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Timer_Configuration_TimerTypeCountdownToTime_FieldNumber_Period];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - Enum Timer_Configuration_TimerTypeCountdownToTime_TimePeriod

GPBEnumDescriptor *Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "TimePeriodAm\000TimePeriodPm\000TimePeriod24\000";
    static const int32_t values[] = {
        Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriodAm,
        Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriodPm,
        Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriod24,
    };
    static const char *extraTextFormatInfo = "\001\002d\346\202\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Timer_Configuration_TimerTypeCountdownToTime_TimePeriod)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_IsValidValue(int32_t value__) {
  switch (value__) {
    case Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriodAm:
    case Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriodPm:
    case Timer_Configuration_TimerTypeCountdownToTime_TimePeriod_TimePeriod24:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Timer_Configuration_TimerTypeElapsedTime

@implementation Timer_Configuration_TimerTypeElapsedTime

@dynamic startTime;
@dynamic endTime;
@dynamic hasEndTime;

typedef struct Timer_Configuration_TimerTypeElapsedTime__storage_ {
  uint32_t _has_storage_[1];
  double startTime;
  double endTime;
} Timer_Configuration_TimerTypeElapsedTime__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "startTime",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Configuration_TimerTypeElapsedTime_FieldNumber_StartTime,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Timer_Configuration_TimerTypeElapsedTime__storage_, startTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "endTime",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Configuration_TimerTypeElapsedTime_FieldNumber_EndTime,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Timer_Configuration_TimerTypeElapsedTime__storage_, endTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "hasEndTime",
        .dataTypeSpecific.clazz = Nil,
        .number = Timer_Configuration_TimerTypeElapsedTime_FieldNumber_HasEndTime,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Timer_Configuration_TimerTypeElapsedTime class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Timer_Configuration_TimerTypeElapsedTime__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Timer_Configuration)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TimersDocument

@implementation TimersDocument

@dynamic hasApplicationInfo, applicationInfo;
@dynamic hasClock, clock;
@dynamic timersArray, timersArray_Count;

typedef struct TimersDocument__storage_ {
  uint32_t _has_storage_[1];
  ApplicationInfo *applicationInfo;
  Clock *clock;
  NSMutableArray *timersArray;
} TimersDocument__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "applicationInfo",
        .dataTypeSpecific.clazz = GPBObjCClass(ApplicationInfo),
        .number = TimersDocument_FieldNumber_ApplicationInfo,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TimersDocument__storage_, applicationInfo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "clock",
        .dataTypeSpecific.clazz = GPBObjCClass(Clock),
        .number = TimersDocument_FieldNumber_Clock,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TimersDocument__storage_, clock),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "timersArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Timer),
        .number = TimersDocument_FieldNumber_TimersArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(TimersDocument__storage_, timersArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TimersDocument class]
                                     rootClass:[TimersRoot class]
                                          file:TimersRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TimersDocument__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
