// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: proscreen.proto

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

#import "Proscreen.pbobjc.h"
#import "Screens.pbobjc.h"
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
GPBObjCClassDeclaration(Color);
GPBObjCClassDeclaration(EdgeBlend);
GPBObjCClassDeclaration(ProPresenterScreen);
GPBObjCClassDeclaration(ProPresenterScreen_CombinedArrangement);
GPBObjCClassDeclaration(ProPresenterScreen_EdgeBlendArrangement);
GPBObjCClassDeclaration(ProPresenterScreen_SingleArrangement);
GPBObjCClassDeclaration(Screen);
GPBObjCClassDeclaration(UUID);

#pragma mark - ProscreenRoot

@implementation ProscreenRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - ProscreenRoot_FileDescriptor

static GPBFileDescriptor *ProscreenRoot_FileDescriptor(void) {
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

#pragma mark - ProPresenterScreen

@implementation ProPresenterScreen

@dynamic arrangementOneOfCase;
@dynamic name;
@dynamic screenType;
@dynamic hasBackgroundColor, backgroundColor;
@dynamic hasUuid, uuid;
@dynamic backgroundColorEnabled;
@dynamic arrangementSingle;
@dynamic arrangementCombined;
@dynamic arrangementEdgeBlend;

typedef struct ProPresenterScreen__storage_ {
  uint32_t _has_storage_[2];
  ProPresenterScreen_ScreenType screenType;
  NSString *name;
  ProPresenterScreen_SingleArrangement *arrangementSingle;
  ProPresenterScreen_CombinedArrangement *arrangementCombined;
  ProPresenterScreen_EdgeBlendArrangement *arrangementEdgeBlend;
  Color *backgroundColor;
  UUID *uuid;
} ProPresenterScreen__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = ProPresenterScreen_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ProPresenterScreen__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "screenType",
        .dataTypeSpecific.enumDescFunc = ProPresenterScreen_ScreenType_EnumDescriptor,
        .number = ProPresenterScreen_FieldNumber_ScreenType,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ProPresenterScreen__storage_, screenType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "arrangementSingle",
        .dataTypeSpecific.clazz = GPBObjCClass(ProPresenterScreen_SingleArrangement),
        .number = ProPresenterScreen_FieldNumber_ArrangementSingle,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(ProPresenterScreen__storage_, arrangementSingle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "arrangementCombined",
        .dataTypeSpecific.clazz = GPBObjCClass(ProPresenterScreen_CombinedArrangement),
        .number = ProPresenterScreen_FieldNumber_ArrangementCombined,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(ProPresenterScreen__storage_, arrangementCombined),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "arrangementEdgeBlend",
        .dataTypeSpecific.clazz = GPBObjCClass(ProPresenterScreen_EdgeBlendArrangement),
        .number = ProPresenterScreen_FieldNumber_ArrangementEdgeBlend,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(ProPresenterScreen__storage_, arrangementEdgeBlend),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "backgroundColor",
        .dataTypeSpecific.clazz = GPBObjCClass(Color),
        .number = ProPresenterScreen_FieldNumber_BackgroundColor,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ProPresenterScreen__storage_, backgroundColor),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = ProPresenterScreen_FieldNumber_Uuid,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ProPresenterScreen__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "backgroundColorEnabled",
        .dataTypeSpecific.clazz = Nil,
        .number = ProPresenterScreen_FieldNumber_BackgroundColorEnabled,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ProPresenterScreen class]
                                     rootClass:[ProscreenRoot class]
                                          file:ProscreenRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ProPresenterScreen__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    static const char *oneofs[] = {
      "arrangement",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t ProPresenterScreen_ScreenType_RawValue(ProPresenterScreen *message) {
  GPBDescriptor *descriptor = [ProPresenterScreen descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ProPresenterScreen_FieldNumber_ScreenType];
  return GPBGetMessageRawEnumField(message, field);
}

void SetProPresenterScreen_ScreenType_RawValue(ProPresenterScreen *message, int32_t value) {
  GPBDescriptor *descriptor = [ProPresenterScreen descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ProPresenterScreen_FieldNumber_ScreenType];
  GPBSetMessageRawEnumField(message, field, value);
}

void ProPresenterScreen_ClearArrangementOneOfCase(ProPresenterScreen *message) {
  GPBDescriptor *descriptor = [ProPresenterScreen descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBClearOneof(message, oneof);
}
#pragma mark - Enum ProPresenterScreen_ScreenType

GPBEnumDescriptor *ProPresenterScreen_ScreenType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "ScreenTypeUnknown\000ScreenTypeAudience\000Scr"
        "eenTypeStage\000";
    static const int32_t values[] = {
        ProPresenterScreen_ScreenType_ScreenTypeUnknown,
        ProPresenterScreen_ScreenType_ScreenTypeAudience,
        ProPresenterScreen_ScreenType_ScreenTypeStage,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(ProPresenterScreen_ScreenType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:ProPresenterScreen_ScreenType_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL ProPresenterScreen_ScreenType_IsValidValue(int32_t value__) {
  switch (value__) {
    case ProPresenterScreen_ScreenType_ScreenTypeUnknown:
    case ProPresenterScreen_ScreenType_ScreenTypeAudience:
    case ProPresenterScreen_ScreenType_ScreenTypeStage:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - ProPresenterScreen_SingleArrangement

@implementation ProPresenterScreen_SingleArrangement

@dynamic screensArray, screensArray_Count;

typedef struct ProPresenterScreen_SingleArrangement__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *screensArray;
} ProPresenterScreen_SingleArrangement__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "screensArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Screen),
        .number = ProPresenterScreen_SingleArrangement_FieldNumber_ScreensArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterScreen_SingleArrangement__storage_, screensArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ProPresenterScreen_SingleArrangement class]
                                     rootClass:[ProscreenRoot class]
                                          file:ProscreenRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ProPresenterScreen_SingleArrangement__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(ProPresenterScreen)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ProPresenterScreen_CombinedArrangement

@implementation ProPresenterScreen_CombinedArrangement

@dynamic screensArray, screensArray_Count;
@dynamic rows;
@dynamic columns;

typedef struct ProPresenterScreen_CombinedArrangement__storage_ {
  uint32_t _has_storage_[1];
  uint32_t rows;
  uint32_t columns;
  NSMutableArray *screensArray;
} ProPresenterScreen_CombinedArrangement__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "screensArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Screen),
        .number = ProPresenterScreen_CombinedArrangement_FieldNumber_ScreensArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterScreen_CombinedArrangement__storage_, screensArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "rows",
        .dataTypeSpecific.clazz = Nil,
        .number = ProPresenterScreen_CombinedArrangement_FieldNumber_Rows,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ProPresenterScreen_CombinedArrangement__storage_, rows),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "columns",
        .dataTypeSpecific.clazz = Nil,
        .number = ProPresenterScreen_CombinedArrangement_FieldNumber_Columns,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ProPresenterScreen_CombinedArrangement__storage_, columns),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ProPresenterScreen_CombinedArrangement class]
                                     rootClass:[ProscreenRoot class]
                                          file:ProscreenRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ProPresenterScreen_CombinedArrangement__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(ProPresenterScreen)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ProPresenterScreen_EdgeBlendArrangement

@implementation ProPresenterScreen_EdgeBlendArrangement

@dynamic screenCount;
@dynamic screensArray, screensArray_Count;
@dynamic edgeBlendsArray, edgeBlendsArray_Count;

typedef struct ProPresenterScreen_EdgeBlendArrangement__storage_ {
  uint32_t _has_storage_[1];
  uint32_t screenCount;
  NSMutableArray *screensArray;
  NSMutableArray *edgeBlendsArray;
} ProPresenterScreen_EdgeBlendArrangement__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "screenCount",
        .dataTypeSpecific.clazz = Nil,
        .number = ProPresenterScreen_EdgeBlendArrangement_FieldNumber_ScreenCount,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ProPresenterScreen_EdgeBlendArrangement__storage_, screenCount),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "screensArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Screen),
        .number = ProPresenterScreen_EdgeBlendArrangement_FieldNumber_ScreensArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterScreen_EdgeBlendArrangement__storage_, screensArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "edgeBlendsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(EdgeBlend),
        .number = ProPresenterScreen_EdgeBlendArrangement_FieldNumber_EdgeBlendsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterScreen_EdgeBlendArrangement__storage_, edgeBlendsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ProPresenterScreen_EdgeBlendArrangement class]
                                     rootClass:[ProscreenRoot class]
                                          file:ProscreenRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ProPresenterScreen_EdgeBlendArrangement__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(ProPresenterScreen)];
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