// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: alignmentGuide.proto

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

#import "AlignmentGuide.pbobjc.h"
#import "BasicTypes.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(UUID);

#pragma mark - AlignmentGuideRoot

@implementation AlignmentGuideRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - AlignmentGuideRoot_FileDescriptor

static GPBFileDescriptor *AlignmentGuideRoot_FileDescriptor(void) {
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

#pragma mark - AlignmentGuide

@implementation AlignmentGuide

@dynamic hasUuid, uuid;
@dynamic orientation;
@dynamic location;

typedef struct AlignmentGuide__storage_ {
  uint32_t _has_storage_[1];
  AlignmentGuide_GuidelineOrientation orientation;
  UUID *uuid;
  double location;
} AlignmentGuide__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = AlignmentGuide_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AlignmentGuide__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "orientation",
        .dataTypeSpecific.enumDescFunc = AlignmentGuide_GuidelineOrientation_EnumDescriptor,
        .number = AlignmentGuide_FieldNumber_Orientation,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AlignmentGuide__storage_, orientation),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "location",
        .dataTypeSpecific.clazz = Nil,
        .number = AlignmentGuide_FieldNumber_Location,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AlignmentGuide__storage_, location),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AlignmentGuide class]
                                     rootClass:[AlignmentGuideRoot class]
                                          file:AlignmentGuideRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AlignmentGuide__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t AlignmentGuide_Orientation_RawValue(AlignmentGuide *message) {
  GPBDescriptor *descriptor = [AlignmentGuide descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:AlignmentGuide_FieldNumber_Orientation];
  return GPBGetMessageRawEnumField(message, field);
}

void SetAlignmentGuide_Orientation_RawValue(AlignmentGuide *message, int32_t value) {
  GPBDescriptor *descriptor = [AlignmentGuide descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:AlignmentGuide_FieldNumber_Orientation];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - Enum AlignmentGuide_GuidelineOrientation

GPBEnumDescriptor *AlignmentGuide_GuidelineOrientation_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "GuidelineOrientationHorizontal\000Guideline"
        "OrientationVertical\000";
    static const int32_t values[] = {
        AlignmentGuide_GuidelineOrientation_GuidelineOrientationHorizontal,
        AlignmentGuide_GuidelineOrientation_GuidelineOrientationVertical,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(AlignmentGuide_GuidelineOrientation)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:AlignmentGuide_GuidelineOrientation_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL AlignmentGuide_GuidelineOrientation_IsValidValue(int32_t value__) {
  switch (value__) {
    case AlignmentGuide_GuidelineOrientation_GuidelineOrientationHorizontal:
    case AlignmentGuide_GuidelineOrientation_GuidelineOrientationVertical:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
