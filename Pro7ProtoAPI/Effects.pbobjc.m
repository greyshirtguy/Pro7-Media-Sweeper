// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: effects.proto

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

#import "Effects.pbobjc.h"
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
GPBObjCClassDeclaration(Effect);
GPBObjCClassDeclaration(Effect_EffectVariable);
GPBObjCClassDeclaration(Effect_EffectVariable_EffectColor);
GPBObjCClassDeclaration(Effect_EffectVariable_EffectDirection);
GPBObjCClassDeclaration(Effect_EffectVariable_EffectDouble);
GPBObjCClassDeclaration(Effect_EffectVariable_EffectFloat);
GPBObjCClassDeclaration(Effect_EffectVariable_EffectInt);
GPBObjCClassDeclaration(Transition);
GPBObjCClassDeclaration(UUID);

#pragma mark - EffectsRoot

@implementation EffectsRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - EffectsRoot_FileDescriptor

static GPBFileDescriptor *EffectsRoot_FileDescriptor(void) {
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

#pragma mark - Effect

@implementation Effect

@dynamic hasUuid, uuid;
@dynamic enabled;
@dynamic name;
@dynamic renderId;
@dynamic behaviorDescription;
@dynamic category;
@dynamic variablesArray, variablesArray_Count;

typedef struct Effect__storage_ {
  uint32_t _has_storage_[1];
  UUID *uuid;
  NSString *name;
  NSString *renderId;
  NSString *behaviorDescription;
  NSString *category;
  NSMutableArray *variablesArray;
} Effect__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Effect_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Effect__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "enabled",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_FieldNumber_Enabled,
        .hasIndex = 1,
        .offset = 2,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_FieldNumber_Name,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Effect__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "renderId",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_FieldNumber_RenderId,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Effect__storage_, renderId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "behaviorDescription",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_FieldNumber_BehaviorDescription,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Effect__storage_, behaviorDescription),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "category",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_FieldNumber_Category,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(Effect__storage_, category),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "variablesArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Effect_EffectVariable),
        .number = Effect_FieldNumber_VariablesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Effect__storage_, variablesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Effect class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Effect__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Effect_EffectVariable

@implementation Effect_EffectVariable

@dynamic typeOneOfCase;
@dynamic name;
@dynamic description_p;
@dynamic int_p;
@dynamic float_p;
@dynamic color;
@dynamic direction;
@dynamic double_p;

typedef struct Effect_EffectVariable__storage_ {
  uint32_t _has_storage_[2];
  NSString *name;
  NSString *description_p;
  Effect_EffectVariable_EffectInt *int_p;
  Effect_EffectVariable_EffectFloat *float_p;
  Effect_EffectVariable_EffectColor *color;
  Effect_EffectVariable_EffectDirection *direction;
  Effect_EffectVariable_EffectDouble *double_p;
} Effect_EffectVariable__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Effect_EffectVariable__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_FieldNumber_Description_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable__storage_, description_p),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "int_p",
        .dataTypeSpecific.clazz = GPBObjCClass(Effect_EffectVariable_EffectInt),
        .number = Effect_EffectVariable_FieldNumber_Int_p,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable__storage_, int_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "float_p",
        .dataTypeSpecific.clazz = GPBObjCClass(Effect_EffectVariable_EffectFloat),
        .number = Effect_EffectVariable_FieldNumber_Float_p,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable__storage_, float_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "color",
        .dataTypeSpecific.clazz = GPBObjCClass(Effect_EffectVariable_EffectColor),
        .number = Effect_EffectVariable_FieldNumber_Color,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable__storage_, color),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "direction",
        .dataTypeSpecific.clazz = GPBObjCClass(Effect_EffectVariable_EffectDirection),
        .number = Effect_EffectVariable_FieldNumber_Direction,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable__storage_, direction),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "double_p",
        .dataTypeSpecific.clazz = GPBObjCClass(Effect_EffectVariable_EffectDouble),
        .number = Effect_EffectVariable_FieldNumber_Double_p,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable__storage_, double_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Effect_EffectVariable class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Effect_EffectVariable__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    static const char *oneofs[] = {
      "type",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Effect)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void Effect_EffectVariable_ClearTypeOneOfCase(Effect_EffectVariable *message) {
  GPBDescriptor *descriptor = [Effect_EffectVariable descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBClearOneof(message, oneof);
}
#pragma mark - Effect_EffectVariable_EffectInt

@implementation Effect_EffectVariable_EffectInt

@dynamic value;
@dynamic defaultValue;
@dynamic min;
@dynamic max;

typedef struct Effect_EffectVariable_EffectInt__storage_ {
  uint32_t _has_storage_[1];
  int32_t value;
  int32_t defaultValue;
  int32_t min;
  int32_t max;
} Effect_EffectVariable_EffectInt__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectInt_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectInt__storage_, value),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "defaultValue",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectInt_FieldNumber_DefaultValue,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectInt__storage_, defaultValue),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "min",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectInt_FieldNumber_Min,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectInt__storage_, min),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "max",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectInt_FieldNumber_Max,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectInt__storage_, max),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Effect_EffectVariable_EffectInt class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Effect_EffectVariable_EffectInt__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Effect_EffectVariable)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Effect_EffectVariable_EffectFloat

@implementation Effect_EffectVariable_EffectFloat

@dynamic value;
@dynamic defaultValue;
@dynamic min;
@dynamic max;

typedef struct Effect_EffectVariable_EffectFloat__storage_ {
  uint32_t _has_storage_[1];
  float value;
  float defaultValue;
  float min;
  float max;
} Effect_EffectVariable_EffectFloat__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectFloat_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectFloat__storage_, value),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "defaultValue",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectFloat_FieldNumber_DefaultValue,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectFloat__storage_, defaultValue),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "min",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectFloat_FieldNumber_Min,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectFloat__storage_, min),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "max",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectFloat_FieldNumber_Max,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectFloat__storage_, max),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeFloat,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Effect_EffectVariable_EffectFloat class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Effect_EffectVariable_EffectFloat__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Effect_EffectVariable)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Effect_EffectVariable_EffectDouble

@implementation Effect_EffectVariable_EffectDouble

@dynamic value;
@dynamic defaultValue;
@dynamic min;
@dynamic max;

typedef struct Effect_EffectVariable_EffectDouble__storage_ {
  uint32_t _has_storage_[1];
  double value;
  double defaultValue;
  double min;
  double max;
} Effect_EffectVariable_EffectDouble__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectDouble_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectDouble__storage_, value),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "defaultValue",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectDouble_FieldNumber_DefaultValue,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectDouble__storage_, defaultValue),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "min",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectDouble_FieldNumber_Min,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectDouble__storage_, min),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "max",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectDouble_FieldNumber_Max,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectDouble__storage_, max),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Effect_EffectVariable_EffectDouble class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Effect_EffectVariable_EffectDouble__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Effect_EffectVariable)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Effect_EffectVariable_EffectColor

@implementation Effect_EffectVariable_EffectColor

@dynamic hasColor, color;
@dynamic hasDefaultColor, defaultColor;

typedef struct Effect_EffectVariable_EffectColor__storage_ {
  uint32_t _has_storage_[1];
  Color *color;
  Color *defaultColor;
} Effect_EffectVariable_EffectColor__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "color",
        .dataTypeSpecific.clazz = GPBObjCClass(Color),
        .number = Effect_EffectVariable_EffectColor_FieldNumber_Color,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectColor__storage_, color),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "defaultColor",
        .dataTypeSpecific.clazz = GPBObjCClass(Color),
        .number = Effect_EffectVariable_EffectColor_FieldNumber_DefaultColor,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectColor__storage_, defaultColor),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Effect_EffectVariable_EffectColor class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Effect_EffectVariable_EffectColor__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Effect_EffectVariable)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Effect_EffectVariable_EffectDirection

@implementation Effect_EffectVariable_EffectDirection

@dynamic direction;
@dynamic defaultDirection;
@dynamic availableDirections;

typedef struct Effect_EffectVariable_EffectDirection__storage_ {
  uint32_t _has_storage_[1];
  Effect_EffectVariable_EffectDirection_EffectDirection direction;
  Effect_EffectVariable_EffectDirection_EffectDirection defaultDirection;
  uint32_t availableDirections;
} Effect_EffectVariable_EffectDirection__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "direction",
        .dataTypeSpecific.enumDescFunc = Effect_EffectVariable_EffectDirection_EffectDirection_EnumDescriptor,
        .number = Effect_EffectVariable_EffectDirection_FieldNumber_Direction,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectDirection__storage_, direction),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "defaultDirection",
        .dataTypeSpecific.enumDescFunc = Effect_EffectVariable_EffectDirection_EffectDirection_EnumDescriptor,
        .number = Effect_EffectVariable_EffectDirection_FieldNumber_DefaultDirection,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectDirection__storage_, defaultDirection),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "availableDirections",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_EffectVariable_EffectDirection_FieldNumber_AvailableDirections,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Effect_EffectVariable_EffectDirection__storage_, availableDirections),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Effect_EffectVariable_EffectDirection class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Effect_EffectVariable_EffectDirection__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Effect_EffectVariable)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Effect_EffectVariable_EffectDirection_Direction_RawValue(Effect_EffectVariable_EffectDirection *message) {
  GPBDescriptor *descriptor = [Effect_EffectVariable_EffectDirection descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Effect_EffectVariable_EffectDirection_FieldNumber_Direction];
  return GPBGetMessageRawEnumField(message, field);
}

void SetEffect_EffectVariable_EffectDirection_Direction_RawValue(Effect_EffectVariable_EffectDirection *message, int32_t value) {
  GPBDescriptor *descriptor = [Effect_EffectVariable_EffectDirection descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Effect_EffectVariable_EffectDirection_FieldNumber_Direction];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t Effect_EffectVariable_EffectDirection_DefaultDirection_RawValue(Effect_EffectVariable_EffectDirection *message) {
  GPBDescriptor *descriptor = [Effect_EffectVariable_EffectDirection descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Effect_EffectVariable_EffectDirection_FieldNumber_DefaultDirection];
  return GPBGetMessageRawEnumField(message, field);
}

void SetEffect_EffectVariable_EffectDirection_DefaultDirection_RawValue(Effect_EffectVariable_EffectDirection *message, int32_t value) {
  GPBDescriptor *descriptor = [Effect_EffectVariable_EffectDirection descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Effect_EffectVariable_EffectDirection_FieldNumber_DefaultDirection];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - Enum Effect_EffectVariable_EffectDirection_EffectDirection

GPBEnumDescriptor *Effect_EffectVariable_EffectDirection_EffectDirection_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "EffectDirectionNone\000EffectDirectionTopLe"
        "ft\000EffectDirectionTop\000EffectDirectionTop"
        "Right\000EffectDirectionLeft\000EffectDirectio"
        "nCenter\000EffectDirectionRight\000EffectDirec"
        "tionBottomLeft\000EffectDirectionBottom\000Eff"
        "ectDirectionBottomRight\000";
    static const int32_t values[] = {
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionNone,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionTopLeft,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionTop,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionTopRight,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionLeft,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionCenter,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionRight,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionBottomLeft,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionBottom,
        Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionBottomRight,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Effect_EffectVariable_EffectDirection_EffectDirection)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Effect_EffectVariable_EffectDirection_EffectDirection_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Effect_EffectVariable_EffectDirection_EffectDirection_IsValidValue(int32_t value__) {
  switch (value__) {
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionNone:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionTopLeft:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionTop:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionTopRight:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionLeft:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionCenter:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionRight:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionBottomLeft:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionBottom:
    case Effect_EffectVariable_EffectDirection_EffectDirection_EffectDirectionBottomRight:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Effect_Preset

@implementation Effect_Preset

@dynamic hasUuid, uuid;
@dynamic name;
@dynamic effectsArray, effectsArray_Count;

typedef struct Effect_Preset__storage_ {
  uint32_t _has_storage_[1];
  UUID *uuid;
  NSString *name;
  NSMutableArray *effectsArray;
} Effect_Preset__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Effect_Preset_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Effect_Preset__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = Effect_Preset_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Effect_Preset__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "effectsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Effect),
        .number = Effect_Preset_FieldNumber_EffectsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Effect_Preset__storage_, effectsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Effect_Preset class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Effect_Preset__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Effect)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Transition

@implementation Transition

@dynamic duration;
@dynamic hasFavoriteUuid, favoriteUuid;
@dynamic hasEffect, effect;

typedef struct Transition__storage_ {
  uint32_t _has_storage_[1];
  UUID *favoriteUuid;
  Effect *effect;
  double duration;
} Transition__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "duration",
        .dataTypeSpecific.clazz = Nil,
        .number = Transition_FieldNumber_Duration,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Transition__storage_, duration),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "favoriteUuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Transition_FieldNumber_FavoriteUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Transition__storage_, favoriteUuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "effect",
        .dataTypeSpecific.clazz = GPBObjCClass(Effect),
        .number = Transition_FieldNumber_Effect,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Transition__storage_, effect),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Transition class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Transition__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Transition_Preset

@implementation Transition_Preset

@dynamic hasUuid, uuid;
@dynamic name;
@dynamic hasTransition, transition;

typedef struct Transition_Preset__storage_ {
  uint32_t _has_storage_[1];
  UUID *uuid;
  NSString *name;
  Transition *transition;
} Transition_Preset__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.clazz = GPBObjCClass(UUID),
        .number = Transition_Preset_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Transition_Preset__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = Transition_Preset_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Transition_Preset__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "transition",
        .dataTypeSpecific.clazz = GPBObjCClass(Transition),
        .number = Transition_Preset_FieldNumber_Transition,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Transition_Preset__storage_, transition),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Transition_Preset class]
                                     rootClass:[EffectsRoot class]
                                          file:EffectsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Transition_Preset__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Transition)];
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
