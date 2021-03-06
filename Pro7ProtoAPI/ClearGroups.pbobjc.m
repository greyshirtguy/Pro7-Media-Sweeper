// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: clearGroups.proto

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

#import "ClearGroups.pbobjc.h"
#import "BasicTypes.pbobjc.h"
#import "Action.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(Action_ClearType);
GPBObjCClassDeclaration(ApplicationInfo);
GPBObjCClassDeclaration(ClearGroupsDocument);
GPBObjCClassDeclaration(ClearGroupsDocument_ClearGroup);
GPBObjCClassDeclaration(Color);
GPBObjCClassDeclaration(UUID);

#pragma mark - ClearGroupsRoot

@implementation ClearGroupsRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - ClearGroupsRoot_FileDescriptor

static GPBFileDescriptor *ClearGroupsRoot_FileDescriptor(void) {
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

#pragma mark - ClearGroupsDocument

@implementation ClearGroupsDocument

@dynamic hasApplicationInfo, applicationInfo;
@dynamic groupsArray, groupsArray_Count;

typedef struct ClearGroupsDocument__storage_ {
  uint32_t _has_storage_[1];
  ApplicationInfo *applicationInfo;
  NSMutableArray *groupsArray;
} ClearGroupsDocument__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "applicationInfo",
        .dataTypeSpecific.clazz = GPBObjCClass(ApplicationInfo),
        .number = ClearGroupsDocument_FieldNumber_ApplicationInfo,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ClearGroupsDocument__storage_, applicationInfo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "groupsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(ClearGroupsDocument_ClearGroup),
        .number = ClearGroupsDocument_FieldNumber_GroupsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ClearGroupsDocument__storage_, groupsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ClearGroupsDocument class]
                                     rootClass:[ClearGroupsRoot class]
                                          file:ClearGroupsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ClearGroupsDocument__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ClearGroupsDocument_ClearGroup

@implementation ClearGroupsDocument_ClearGroup

@dynamic hasUuid, uuid;
@dynamic name;
@dynamic layerTargetsArray, layerTargetsArray_Count;
@dynamic isHiddenInPreview;
@dynamic imageData;
@dynamic imageType;
@dynamic isIconTinted;
@dynamic hasIconTintColor, iconTintColor;
@dynamic timelineTargetsArray, timelineTargetsArray_Count;

typedef struct ClearGroupsDocument_ClearGroup__storage_ {
  uint32_t _has_storage_[1];
  ClearGroupsDocument_ClearGroup_ImageType imageType;
  UUID *uuid;
  NSString *name;
  NSMutableArray *layerTargetsArray;
  NSData *imageData;
  Color *iconTintColor;
  GPBEnumArray *timelineTargetsArray;
} ClearGroupsDocument_ClearGroup__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ClearGroupsDocument_ClearGroup__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ClearGroupsDocument_ClearGroup__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "layerTargetsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Action_ClearType),
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_LayerTargetsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ClearGroupsDocument_ClearGroup__storage_, layerTargetsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "isHiddenInPreview",
        .dataTypeSpecific.clazz = Nil,
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_IsHiddenInPreview,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "imageData",
        .dataTypeSpecific.clazz = Nil,
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_ImageData,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(ClearGroupsDocument_ClearGroup__storage_, imageData),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "imageType",
        .dataTypeSpecific.enumDescFunc = ClearGroupsDocument_ClearGroup_ImageType_EnumDescriptor,
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_ImageType,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(ClearGroupsDocument_ClearGroup__storage_, imageType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "isIconTinted",
        .dataTypeSpecific.clazz = Nil,
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_IsIconTinted,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "iconTintColor",
        .dataTypeSpecific.clazz = GPBObjCClass(Color),
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_IconTintColor,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(ClearGroupsDocument_ClearGroup__storage_, iconTintColor),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "timelineTargetsArray",
        .dataTypeSpecific.enumDescFunc = ClearGroupsDocument_ClearGroup_ContentDestination_EnumDescriptor,
        .number = ClearGroupsDocument_ClearGroup_FieldNumber_TimelineTargetsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ClearGroupsDocument_ClearGroup__storage_, timelineTargetsArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ClearGroupsDocument_ClearGroup class]
                                     rootClass:[ClearGroupsRoot class]
                                          file:ClearGroupsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ClearGroupsDocument_ClearGroup__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(ClearGroupsDocument)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t ClearGroupsDocument_ClearGroup_ImageType_RawValue(ClearGroupsDocument_ClearGroup *message) {
  GPBDescriptor *descriptor = [ClearGroupsDocument_ClearGroup descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ClearGroupsDocument_ClearGroup_FieldNumber_ImageType];
  return GPBGetMessageRawEnumField(message, field);
}

void SetClearGroupsDocument_ClearGroup_ImageType_RawValue(ClearGroupsDocument_ClearGroup *message, int32_t value) {
  GPBDescriptor *descriptor = [ClearGroupsDocument_ClearGroup descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ClearGroupsDocument_ClearGroup_FieldNumber_ImageType];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - Enum ClearGroupsDocument_ClearGroup_ImageType

GPBEnumDescriptor *ClearGroupsDocument_ClearGroup_ImageType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "ImageTypeCustom\000ImageTypeOne\000ImageTypeTw"
        "o\000ImageTypeThree\000ImageTypeFour\000ImageType"
        "Five\000ImageTypeSix\000ImageTypeSeven\000ImageTy"
        "peEight\000ImageTypeNine\000ImageTypeZero\000Imag"
        "eTypeAll\000ImageTypeMegahorn\000ImageTypePlay"
        "\000ImageTypeBulb\000ImageTypeSunglasses\000Image"
        "TypeArrow\000ImageTypeTarget\000ImageTypeStar\000"
        "ImageTypeSun\000ImageTypeBell\000ImageTypePape"
        "rclip\000ImageTypeFlask\000ImageTypeEyeglasses"
        "\000ImageTypeCupcake\000ImageTypeSlide\000ImageTy"
        "peHat\000ImageTypeFlower\000ImageTypeHeart\000Ima"
        "geTypeMessage\000ImageTypeAudio\000ImageTypeCl"
        "oud\000ImageTypeExclamation\000";
    static const int32_t values[] = {
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeCustom,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeOne,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeTwo,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeThree,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeFour,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeFive,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSix,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSeven,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeEight,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeNine,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeZero,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeAll,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeMegahorn,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypePlay,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeBulb,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSunglasses,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeArrow,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeTarget,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeStar,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSun,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeBell,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypePaperclip,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeFlask,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeEyeglasses,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeCupcake,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSlide,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeHat,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeFlower,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeHeart,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeMessage,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeAudio,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeCloud,
        ClearGroupsDocument_ClearGroup_ImageType_ImageTypeExclamation,
    };
    static const char *extraTextFormatInfo = "!\000\017\000\001\014\000\002\014\000\003\016\000\004\r\000\005\r\000\006\014\000\007\016\000\010\016\000\t\r\000\n\r\000\013\014\000\014\021\000\r\r\000\016\r\000\017\023\000\020\016\000\021\017\000\022\r\000\023\014\000\024\r\000\025\022\000\026\016\000\027\023\000\030\020\000\031\016\000\032\014\000\033\017\000\034\016\000\035\020\000\036\016\000\037\016\000 \024\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(ClearGroupsDocument_ClearGroup_ImageType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:ClearGroupsDocument_ClearGroup_ImageType_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL ClearGroupsDocument_ClearGroup_ImageType_IsValidValue(int32_t value__) {
  switch (value__) {
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeCustom:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeOne:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeTwo:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeThree:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeFour:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeFive:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSix:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSeven:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeEight:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeNine:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeZero:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeAll:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeMegahorn:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypePlay:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeBulb:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSunglasses:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeArrow:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeTarget:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeStar:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSun:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeBell:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypePaperclip:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeFlask:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeEyeglasses:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeCupcake:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeSlide:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeHat:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeFlower:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeHeart:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeMessage:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeAudio:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeCloud:
    case ClearGroupsDocument_ClearGroup_ImageType_ImageTypeExclamation:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum ClearGroupsDocument_ClearGroup_ContentDestination

GPBEnumDescriptor *ClearGroupsDocument_ClearGroup_ContentDestination_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "ContentDestinationGlobal\000ContentDestinat"
        "ionAnnouncements\000";
    static const int32_t values[] = {
        ClearGroupsDocument_ClearGroup_ContentDestination_ContentDestinationGlobal,
        ClearGroupsDocument_ClearGroup_ContentDestination_ContentDestinationAnnouncements,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(ClearGroupsDocument_ClearGroup_ContentDestination)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:ClearGroupsDocument_ClearGroup_ContentDestination_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL ClearGroupsDocument_ClearGroup_ContentDestination_IsValidValue(int32_t value__) {
  switch (value__) {
    case ClearGroupsDocument_ClearGroup_ContentDestination_ContentDestinationGlobal:
    case ClearGroupsDocument_ClearGroup_ContentDestination_ContentDestinationAnnouncements:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
