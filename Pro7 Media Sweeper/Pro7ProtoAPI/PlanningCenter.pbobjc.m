// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: planningCenter.proto

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

#import "PlanningCenter.pbobjc.h"
#import "BasicTypes.pbobjc.h"
#import "Timestamp.pbobjc.h"
#import "Presentation.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(PlanningCenterPlan);
GPBObjCClassDeclaration(PlanningCenterPlan_PlanItem);
GPBObjCClassDeclaration(PlanningCenterPlan_PlanItem_Attachment);
GPBObjCClassDeclaration(PlanningCenterPlan_PlanItem_SongItem);
GPBObjCClassDeclaration(PlanningCenterPlan_PlanItem_SongItem_Sequence);
GPBObjCClassDeclaration(Presentation_CCLI);
GPBObjCClassDeclaration(Timestamp);
GPBObjCClassDeclaration(URL);

#pragma mark - PlanningCenterRoot

@implementation PlanningCenterRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - PlanningCenterRoot_FileDescriptor

static GPBFileDescriptor *PlanningCenterRoot_FileDescriptor(void) {
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

#pragma mark - PlanningCenterPlan

@implementation PlanningCenterPlan

@dynamic planIdNum;
@dynamic parentIdNum;
@dynamic seriesTitle;
@dynamic planTitle;
@dynamic dateList;
@dynamic hasCreatedDate, createdDate;
@dynamic hasUpdateDate, updateDate;
@dynamic hasLastUpdateCheckDate, lastUpdateCheckDate;
@dynamic planIdStr;
@dynamic parentIdStr;

typedef struct PlanningCenterPlan__storage_ {
  uint32_t _has_storage_[1];
  uint32_t planIdNum;
  uint32_t parentIdNum;
  NSString *seriesTitle;
  NSString *planTitle;
  NSString *dateList;
  Timestamp *createdDate;
  Timestamp *updateDate;
  Timestamp *lastUpdateCheckDate;
  NSString *planIdStr;
  NSString *parentIdStr;
} PlanningCenterPlan__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "planIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_FieldNumber_PlanIdNum,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, planIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "parentIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_FieldNumber_ParentIdNum,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, parentIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "seriesTitle",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_FieldNumber_SeriesTitle,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, seriesTitle),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "planTitle",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_FieldNumber_PlanTitle,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, planTitle),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "dateList",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_FieldNumber_DateList,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, dateList),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "createdDate",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = PlanningCenterPlan_FieldNumber_CreatedDate,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, createdDate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "updateDate",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = PlanningCenterPlan_FieldNumber_UpdateDate,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, updateDate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "lastUpdateCheckDate",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = PlanningCenterPlan_FieldNumber_LastUpdateCheckDate,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, lastUpdateCheckDate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "planIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_FieldNumber_PlanIdStr,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, planIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "parentIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_FieldNumber_ParentIdStr,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(PlanningCenterPlan__storage_, parentIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PlanningCenterPlan class]
                                     rootClass:[PlanningCenterRoot class]
                                          file:PlanningCenterRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PlanningCenterPlan__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PlanningCenterPlan_PlanItem

@implementation PlanningCenterPlan_PlanItem

@dynamic itemType;
@dynamic pcoIdNum;
@dynamic serviceIdNum;
@dynamic parentIdNum;
@dynamic name;
@dynamic attachmentsArray, attachmentsArray_Count;
@dynamic hasUpdateDate, updateDate;
@dynamic hasLinkedSong, linkedSong;
@dynamic pcoIdStr;
@dynamic serviceIdStr;
@dynamic parentIdStr;

typedef struct PlanningCenterPlan_PlanItem__storage_ {
  uint32_t _has_storage_[1];
  PlanningCenterPlan_PlanItem_PlanItemType itemType;
  uint32_t pcoIdNum;
  uint32_t serviceIdNum;
  uint32_t parentIdNum;
  NSString *name;
  NSMutableArray *attachmentsArray;
  Timestamp *updateDate;
  PlanningCenterPlan_PlanItem_SongItem *linkedSong;
  NSString *pcoIdStr;
  NSString *serviceIdStr;
  NSString *parentIdStr;
} PlanningCenterPlan_PlanItem__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "itemType",
        .dataTypeSpecific.enumDescFunc = PlanningCenterPlan_PlanItem_PlanItemType_EnumDescriptor,
        .number = PlanningCenterPlan_PlanItem_FieldNumber_ItemType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, itemType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "pcoIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_FieldNumber_PcoIdNum,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, pcoIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "serviceIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_FieldNumber_ServiceIdNum,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, serviceIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "parentIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_FieldNumber_ParentIdNum,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, parentIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_FieldNumber_Name,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "attachmentsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(PlanningCenterPlan_PlanItem_Attachment),
        .number = PlanningCenterPlan_PlanItem_FieldNumber_AttachmentsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, attachmentsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "updateDate",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = PlanningCenterPlan_PlanItem_FieldNumber_UpdateDate,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, updateDate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "linkedSong",
        .dataTypeSpecific.clazz = GPBObjCClass(PlanningCenterPlan_PlanItem_SongItem),
        .number = PlanningCenterPlan_PlanItem_FieldNumber_LinkedSong,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, linkedSong),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "pcoIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_FieldNumber_PcoIdStr,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, pcoIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "serviceIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_FieldNumber_ServiceIdStr,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, serviceIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "parentIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_FieldNumber_ParentIdStr,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem__storage_, parentIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PlanningCenterPlan_PlanItem class]
                                     rootClass:[PlanningCenterRoot class]
                                          file:PlanningCenterRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PlanningCenterPlan_PlanItem__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(PlanningCenterPlan)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t PlanningCenterPlan_PlanItem_ItemType_RawValue(PlanningCenterPlan_PlanItem *message) {
  GPBDescriptor *descriptor = [PlanningCenterPlan_PlanItem descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PlanningCenterPlan_PlanItem_FieldNumber_ItemType];
  return GPBGetMessageRawEnumField(message, field);
}

void SetPlanningCenterPlan_PlanItem_ItemType_RawValue(PlanningCenterPlan_PlanItem *message, int32_t value) {
  GPBDescriptor *descriptor = [PlanningCenterPlan_PlanItem descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PlanningCenterPlan_PlanItem_FieldNumber_ItemType];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - Enum PlanningCenterPlan_PlanItem_PlanItemType

GPBEnumDescriptor *PlanningCenterPlan_PlanItem_PlanItemType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "PlanItemTypeItem\000PlanItemTypeSong\000PlanIt"
        "emTypeMedia\000PlanItemTypeHeader\000";
    static const int32_t values[] = {
        PlanningCenterPlan_PlanItem_PlanItemType_PlanItemTypeItem,
        PlanningCenterPlan_PlanItem_PlanItemType_PlanItemTypeSong,
        PlanningCenterPlan_PlanItem_PlanItemType_PlanItemTypeMedia,
        PlanningCenterPlan_PlanItem_PlanItemType_PlanItemTypeHeader,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(PlanningCenterPlan_PlanItem_PlanItemType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:PlanningCenterPlan_PlanItem_PlanItemType_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL PlanningCenterPlan_PlanItem_PlanItemType_IsValidValue(int32_t value__) {
  switch (value__) {
    case PlanningCenterPlan_PlanItem_PlanItemType_PlanItemTypeItem:
    case PlanningCenterPlan_PlanItem_PlanItemType_PlanItemTypeSong:
    case PlanningCenterPlan_PlanItem_PlanItemType_PlanItemTypeMedia:
    case PlanningCenterPlan_PlanItem_PlanItemType_PlanItemTypeHeader:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - PlanningCenterPlan_PlanItem_Attachment

@implementation PlanningCenterPlan_PlanItem_Attachment

@dynamic name;
@dynamic hasURL, URL;
@dynamic hasCreatedDate, createdDate;
@dynamic hasLinkedPath, linkedPath;
@dynamic pcoIdNum;
@dynamic needsUpdate;
@dynamic hasUpdateDate, updateDate;
@dynamic pcoIdStr;

typedef struct PlanningCenterPlan_PlanItem_Attachment__storage_ {
  uint32_t _has_storage_[1];
  uint32_t pcoIdNum;
  NSString *name;
  URL *URL;
  Timestamp *createdDate;
  URL *linkedPath;
  Timestamp *updateDate;
  NSString *pcoIdStr;
} PlanningCenterPlan_PlanItem_Attachment__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_Attachment_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_Attachment__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "URL",
        .dataTypeSpecific.clazz = GPBObjCClass(URL),
        .number = PlanningCenterPlan_PlanItem_Attachment_FieldNumber_URL,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_Attachment__storage_, URL),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "createdDate",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = PlanningCenterPlan_PlanItem_Attachment_FieldNumber_CreatedDate,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_Attachment__storage_, createdDate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "linkedPath",
        .dataTypeSpecific.clazz = GPBObjCClass(URL),
        .number = PlanningCenterPlan_PlanItem_Attachment_FieldNumber_LinkedPath,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_Attachment__storage_, linkedPath),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "pcoIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_Attachment_FieldNumber_PcoIdNum,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_Attachment__storage_, pcoIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "needsUpdate",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_Attachment_FieldNumber_NeedsUpdate,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "updateDate",
        .dataTypeSpecific.clazz = GPBObjCClass(Timestamp),
        .number = PlanningCenterPlan_PlanItem_Attachment_FieldNumber_UpdateDate,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_Attachment__storage_, updateDate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "pcoIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_Attachment_FieldNumber_PcoIdStr,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_Attachment__storage_, pcoIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PlanningCenterPlan_PlanItem_Attachment class]
                                     rootClass:[PlanningCenterRoot class]
                                          file:PlanningCenterRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PlanningCenterPlan_PlanItem_Attachment__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\002!!!\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    [localDescriptor setupContainingMessageClass:GPBObjCClass(PlanningCenterPlan_PlanItem)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PlanningCenterPlan_PlanItem_SongItem

@implementation PlanningCenterPlan_PlanItem_SongItem

@dynamic pcoIdNum;
@dynamic arrangementIdNum;
@dynamic hasCcli, ccli;
@dynamic hasSequence, sequence;
@dynamic pcoIdStr;
@dynamic arrangementIdStr;

typedef struct PlanningCenterPlan_PlanItem_SongItem__storage_ {
  uint32_t _has_storage_[1];
  uint32_t pcoIdNum;
  uint32_t arrangementIdNum;
  Presentation_CCLI *ccli;
  PlanningCenterPlan_PlanItem_SongItem_Sequence *sequence;
  NSString *pcoIdStr;
  NSString *arrangementIdStr;
} PlanningCenterPlan_PlanItem_SongItem__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "pcoIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_SongItem_FieldNumber_PcoIdNum,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem__storage_, pcoIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "arrangementIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_SongItem_FieldNumber_ArrangementIdNum,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem__storage_, arrangementIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "ccli",
        .dataTypeSpecific.clazz = GPBObjCClass(Presentation_CCLI),
        .number = PlanningCenterPlan_PlanItem_SongItem_FieldNumber_Ccli,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem__storage_, ccli),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sequence",
        .dataTypeSpecific.clazz = GPBObjCClass(PlanningCenterPlan_PlanItem_SongItem_Sequence),
        .number = PlanningCenterPlan_PlanItem_SongItem_FieldNumber_Sequence,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem__storage_, sequence),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "pcoIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_SongItem_FieldNumber_PcoIdStr,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem__storage_, pcoIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "arrangementIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_SongItem_FieldNumber_ArrangementIdStr,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem__storage_, arrangementIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PlanningCenterPlan_PlanItem_SongItem class]
                                     rootClass:[PlanningCenterRoot class]
                                          file:PlanningCenterRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PlanningCenterPlan_PlanItem_SongItem__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(PlanningCenterPlan_PlanItem)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PlanningCenterPlan_PlanItem_SongItem_Sequence

@implementation PlanningCenterPlan_PlanItem_SongItem_Sequence

@dynamic pcoIdNum;
@dynamic name;
@dynamic groupNamesArray, groupNamesArray_Count;
@dynamic pcoIdStr;

typedef struct PlanningCenterPlan_PlanItem_SongItem_Sequence__storage_ {
  uint32_t _has_storage_[1];
  uint32_t pcoIdNum;
  NSString *name;
  NSMutableArray *groupNamesArray;
  NSString *pcoIdStr;
} PlanningCenterPlan_PlanItem_SongItem_Sequence__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "pcoIdNum",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_SongItem_Sequence_FieldNumber_PcoIdNum,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem_Sequence__storage_, pcoIdNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_SongItem_Sequence_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem_Sequence__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "groupNamesArray",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_SongItem_Sequence_FieldNumber_GroupNamesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem_Sequence__storage_, groupNamesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pcoIdStr",
        .dataTypeSpecific.clazz = Nil,
        .number = PlanningCenterPlan_PlanItem_SongItem_Sequence_FieldNumber_PcoIdStr,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PlanningCenterPlan_PlanItem_SongItem_Sequence__storage_, pcoIdStr),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PlanningCenterPlan_PlanItem_SongItem_Sequence class]
                                     rootClass:[PlanningCenterRoot class]
                                          file:PlanningCenterRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PlanningCenterPlan_PlanItem_SongItem_Sequence__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(PlanningCenterPlan_PlanItem_SongItem)];
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
