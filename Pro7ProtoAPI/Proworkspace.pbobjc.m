// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: proworkspace.proto

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

#import "Proworkspace.pbobjc.h"
#import "Proscreen.pbobjc.h"
#import "ProAudienceLook.pbobjc.h"
#import "ProMask.pbobjc.h"
#import "Input.pbobjc.h"
#import "Audio.pbobjc.h"
#import "DigitalAudio.pbobjc.h"
#import "Stage.pbobjc.h"
#import "Recording.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(AudioInput);
GPBObjCClassDeclaration(Audio_SettingsDocument);
GPBObjCClassDeclaration(DigitalAudio_Setup);
GPBObjCClassDeclaration(ProAudienceLook);
GPBObjCClassDeclaration(ProMask);
GPBObjCClassDeclaration(ProPresenterScreen);
GPBObjCClassDeclaration(Recording_SettingsDocument);
GPBObjCClassDeclaration(Stage_ScreenAssignment);
GPBObjCClassDeclaration(VideoInput);

#pragma mark - ProworkspaceRoot

@implementation ProworkspaceRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - ProworkspaceRoot_FileDescriptor

static GPBFileDescriptor *ProworkspaceRoot_FileDescriptor(void) {
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

#pragma mark - ProPresenterWorkspace

@implementation ProPresenterWorkspace

@dynamic proScreensArray, proScreensArray_Count;
@dynamic audienceLooksArray, audienceLooksArray_Count;
@dynamic hasLiveAudienceLook, liveAudienceLook;
@dynamic masksArray, masksArray_Count;
@dynamic videoInputsArray, videoInputsArray_Count;
@dynamic stageLayoutMappingsArray, stageLayoutMappingsArray_Count;
@dynamic hasAudioSettings, audioSettings;
@dynamic selectedLibraryName;
@dynamic hasRecordSettings, recordSettings;
@dynamic hasDigitalAudioSetup, digitalAudioSetup;
@dynamic audioInputsArray, audioInputsArray_Count;
@dynamic audioInputTransitionTime;

typedef struct ProPresenterWorkspace__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *proScreensArray;
  NSMutableArray *audienceLooksArray;
  ProAudienceLook *liveAudienceLook;
  NSMutableArray *masksArray;
  NSMutableArray *videoInputsArray;
  NSMutableArray *stageLayoutMappingsArray;
  Audio_SettingsDocument *audioSettings;
  NSString *selectedLibraryName;
  Recording_SettingsDocument *recordSettings;
  DigitalAudio_Setup *digitalAudioSetup;
  NSMutableArray *audioInputsArray;
  double audioInputTransitionTime;
} ProPresenterWorkspace__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "proScreensArray",
        .dataTypeSpecific.clazz = GPBObjCClass(ProPresenterScreen),
        .number = ProPresenterWorkspace_FieldNumber_ProScreensArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, proScreensArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "audienceLooksArray",
        .dataTypeSpecific.clazz = GPBObjCClass(ProAudienceLook),
        .number = ProPresenterWorkspace_FieldNumber_AudienceLooksArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, audienceLooksArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "liveAudienceLook",
        .dataTypeSpecific.clazz = GPBObjCClass(ProAudienceLook),
        .number = ProPresenterWorkspace_FieldNumber_LiveAudienceLook,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, liveAudienceLook),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "masksArray",
        .dataTypeSpecific.clazz = GPBObjCClass(ProMask),
        .number = ProPresenterWorkspace_FieldNumber_MasksArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, masksArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "videoInputsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(VideoInput),
        .number = ProPresenterWorkspace_FieldNumber_VideoInputsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, videoInputsArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "stageLayoutMappingsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Stage_ScreenAssignment),
        .number = ProPresenterWorkspace_FieldNumber_StageLayoutMappingsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, stageLayoutMappingsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "audioSettings",
        .dataTypeSpecific.clazz = GPBObjCClass(Audio_SettingsDocument),
        .number = ProPresenterWorkspace_FieldNumber_AudioSettings,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, audioSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "selectedLibraryName",
        .dataTypeSpecific.clazz = Nil,
        .number = ProPresenterWorkspace_FieldNumber_SelectedLibraryName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, selectedLibraryName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "recordSettings",
        .dataTypeSpecific.clazz = GPBObjCClass(Recording_SettingsDocument),
        .number = ProPresenterWorkspace_FieldNumber_RecordSettings,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, recordSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "digitalAudioSetup",
        .dataTypeSpecific.clazz = GPBObjCClass(DigitalAudio_Setup),
        .number = ProPresenterWorkspace_FieldNumber_DigitalAudioSetup,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, digitalAudioSetup),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "audioInputsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(AudioInput),
        .number = ProPresenterWorkspace_FieldNumber_AudioInputsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, audioInputsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "audioInputTransitionTime",
        .dataTypeSpecific.clazz = Nil,
        .number = ProPresenterWorkspace_FieldNumber_AudioInputTransitionTime,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(ProPresenterWorkspace__storage_, audioInputTransitionTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ProPresenterWorkspace class]
                                     rootClass:[ProworkspaceRoot class]
                                          file:ProworkspaceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ProPresenterWorkspace__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\005\000videoInputs\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
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