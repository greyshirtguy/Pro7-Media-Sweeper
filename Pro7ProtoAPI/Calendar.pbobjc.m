// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: calendar.proto

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

#import "Calendar.pbobjc.h"
#import "BasicTypes.pbobjc.h"
#import "Timestamp.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(Calendar);
GPBObjCClassDeclaration(Calendar_Event);
GPBObjCClassDeclaration(Calendar_Event_Action);
GPBObjCClassDeclaration(Calendar_Event_Action_Macro);
GPBObjCClassDeclaration(Calendar_Event_Action_Playlist);
GPBObjCClassDeclaration(CollectionElementType);
GPBObjCClassDeclaration(Timestamp);
GPBObjCClassDeclaration(UUID);

#pragma mark - CalendarRoot

@implementation CalendarRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - CalendarRoot_FileDescriptor

static GPBFileDescriptor *CalendarRoot_FileDescriptor(void) {
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

#pragma mark - Calendar

@implementation Calendar

@dynamic eventsArray, eventsArray_Count;
@dynamic active;

typedef struct Calendar__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *eventsArray;
} Calendar__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "eventsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Calendar_Event),
        .number = Calendar_FieldNumber_EventsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Calendar__storage_, eventsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "active",
        .dataTypeSpecific.clazz = Nil,
        .number = Calendar_FieldNumber_Active,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Calendar class]
                                     rootClass:[CalendarRoot class]
                                          file:CalendarRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Calendar__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Calendar_Event

@implementation Calendar_Event

@dynamic hasUuid, uuid;
@dynamic name;
@dynamic description_p;
@dynamic hasDate, date;
@dynamic recurrenceDaysArray, recurrenceDaysArray_Count;
@dynamic hasRecurrenceLimitDate, recurrenceLimitDate;
@dynamic recurrenceExcludedDatesArray, recurrenceExcludedDatesArray_Count;
@dynamic hasAction, action;

typedef struct Calendar_Event__storage_ {
  uint32_t _has_storage_[1];
  UUID *uuid;
  NSString *name;
  NSString *description_p;
  Timestamp *date;
  GPBEnumArray *recurrenceDaysArray;
  Timestamp *recurrenceLimitDate;
  NSMutableArray *recurrenceExcludedDatesArray;
  Calendar_Event_Action *action;
} Calendar_Event__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Calendar_Event_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Calendar_Event__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = Calendar_Event_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Calendar_Event__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.clazz = Nil,
        .number = Calendar_Event_FieldNumber_Description_p,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Calendar_Event__storage_, description_p),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "date",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = Calendar_Event_FieldNumber_Date,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Calendar_Event__storage_, date),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "recurrenceDaysArray",
        .dataTypeSpecific.enumDescFunc = Calendar_Event_DayOfWeek_EnumDescriptor,
        .number = Calendar_Event_FieldNumber_RecurrenceDaysArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Calendar_Event__storage_, recurrenceDaysArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "recurrenceLimitDate",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = Calendar_Event_FieldNumber_RecurrenceLimitDate,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Calendar_Event__storage_, recurrenceLimitDate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "recurrenceExcludedDatesArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = Calendar_Event_FieldNumber_RecurrenceExcludedDatesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Calendar_Event__storage_, recurrenceExcludedDatesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "action",
        .dataTypeSpecific.clazz = GPBObjCClass(Calendar_Event_Action),
        .number = Calendar_Event_FieldNumber_Action,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Calendar_Event__storage_, action),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Calendar_Event class]
                                     rootClass:[CalendarRoot class]
                                          file:CalendarRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Calendar_Event__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Calendar)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Enum Calendar_Event_DayOfWeek

GPBEnumDescriptor *Calendar_Event_DayOfWeek_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "DayOfWeekUnknown\000DayOfWeekSunday\000DayOfWe"
        "ekMonday\000DayOfWeekTuesday\000DayOfWeekWedne"
        "sday\000DayOfWeekThursday\000DayOfWeekFriday\000D"
        "ayOfWeekSaturday\000";
    static const int32_t values[] = {
        Calendar_Event_DayOfWeek_DayOfWeekUnknown,
        Calendar_Event_DayOfWeek_DayOfWeekSunday,
        Calendar_Event_DayOfWeek_DayOfWeekMonday,
        Calendar_Event_DayOfWeek_DayOfWeekTuesday,
        Calendar_Event_DayOfWeek_DayOfWeekWednesday,
        Calendar_Event_DayOfWeek_DayOfWeekThursday,
        Calendar_Event_DayOfWeek_DayOfWeekFriday,
        Calendar_Event_DayOfWeek_DayOfWeekSaturday,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Calendar_Event_DayOfWeek)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Calendar_Event_DayOfWeek_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Calendar_Event_DayOfWeek_IsValidValue(int32_t value__) {
  switch (value__) {
    case Calendar_Event_DayOfWeek_DayOfWeekUnknown:
    case Calendar_Event_DayOfWeek_DayOfWeekSunday:
    case Calendar_Event_DayOfWeek_DayOfWeekMonday:
    case Calendar_Event_DayOfWeek_DayOfWeekTuesday:
    case Calendar_Event_DayOfWeek_DayOfWeekWednesday:
    case Calendar_Event_DayOfWeek_DayOfWeekThursday:
    case Calendar_Event_DayOfWeek_DayOfWeekFriday:
    case Calendar_Event_DayOfWeek_DayOfWeekSaturday:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Calendar_Event_Action

@implementation Calendar_Event_Action

@dynamic actionTypeOneOfCase;
@dynamic type;
@dynamic hasUuid, uuid;
@dynamic playlist;
@dynamic macro;

typedef struct Calendar_Event_Action__storage_ {
  uint32_t _has_storage_[2];
  uint32_t type;
  UUID *uuid;
  Calendar_Event_Action_Playlist *playlist;
  Calendar_Event_Action_Macro *macro;
} Calendar_Event_Action__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "type",
        .dataTypeSpecific.clazz = Nil,
        .number = Calendar_Event_Action_FieldNumber_Type,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Calendar_Event_Action__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Calendar_Event_Action_FieldNumber_Uuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Calendar_Event_Action__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "playlist",
        .dataTypeSpecific.clazz = GPBObjCClass(Calendar_Event_Action_Playlist),
        .number = Calendar_Event_Action_FieldNumber_Playlist,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Calendar_Event_Action__storage_, playlist),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "macro",
        .dataTypeSpecific.clazz = GPBObjCClass(Calendar_Event_Action_Macro),
        .number = Calendar_Event_Action_FieldNumber_Macro,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Calendar_Event_Action__storage_, macro),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Calendar_Event_Action class]
                                     rootClass:[CalendarRoot class]
                                          file:CalendarRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Calendar_Event_Action__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    static const char *oneofs[] = {
      "actionType",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Calendar_Event)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void Calendar_Event_Action_ClearActionTypeOneOfCase(Calendar_Event_Action *message) {
  GPBDescriptor *descriptor = [Calendar_Event_Action descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBClearOneof(message, oneof);
}
#pragma mark - Calendar_Event_Action_Playlist

@implementation Calendar_Event_Action_Playlist

@dynamic hasPlaylistUuid, playlistUuid;
@dynamic hasPlaylistItemUuid, playlistItemUuid;

typedef struct Calendar_Event_Action_Playlist__storage_ {
  uint32_t _has_storage_[1];
  UUID *playlistUuid;
  UUID *playlistItemUuid;
} Calendar_Event_Action_Playlist__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "playlistUuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Calendar_Event_Action_Playlist_FieldNumber_PlaylistUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Calendar_Event_Action_Playlist__storage_, playlistUuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "playlistItemUuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Calendar_Event_Action_Playlist_FieldNumber_PlaylistItemUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Calendar_Event_Action_Playlist__storage_, playlistItemUuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Calendar_Event_Action_Playlist class]
                                     rootClass:[CalendarRoot class]
                                          file:CalendarRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Calendar_Event_Action_Playlist__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Calendar_Event_Action)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Calendar_Event_Action_Macro

@implementation Calendar_Event_Action_Macro

@dynamic hasIdentification, identification;

typedef struct Calendar_Event_Action_Macro__storage_ {
  uint32_t _has_storage_[1];
  CollectionElementType *identification;
} Calendar_Event_Action_Macro__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "identification",
        .dataTypeSpecific.clazz = GPBObjCClass(CollectionElementType),
        .number = Calendar_Event_Action_Macro_FieldNumber_Identification,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Calendar_Event_Action_Macro__storage_, identification),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Calendar_Event_Action_Macro class]
                                     rootClass:[CalendarRoot class]
                                          file:CalendarRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Calendar_Event_Action_Macro__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Calendar_Event_Action)];
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