// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: hotKey.proto

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

#import "HotKey.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - HotKeyRoot

@implementation HotKeyRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - HotKeyRoot_FileDescriptor

static GPBFileDescriptor *HotKeyRoot_FileDescriptor(void) {
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

#pragma mark - HotKey

@implementation HotKey

@dynamic code;
@dynamic controlIdentifier;

typedef struct HotKey__storage_ {
  uint32_t _has_storage_[1];
  HotKey_KeyCode code;
  NSString *controlIdentifier;
} HotKey__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "code",
        .dataTypeSpecific.enumDescFunc = HotKey_KeyCode_EnumDescriptor,
        .number = HotKey_FieldNumber_Code,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(HotKey__storage_, code),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "controlIdentifier",
        .dataTypeSpecific.clazz = Nil,
        .number = HotKey_FieldNumber_ControlIdentifier,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(HotKey__storage_, controlIdentifier),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[HotKey class]
                                     rootClass:[HotKeyRoot class]
                                          file:HotKeyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(HotKey__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t HotKey_Code_RawValue(HotKey *message) {
  GPBDescriptor *descriptor = [HotKey descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:HotKey_FieldNumber_Code];
  return GPBGetMessageRawEnumField(message, field);
}

void SetHotKey_Code_RawValue(HotKey *message, int32_t value) {
  GPBDescriptor *descriptor = [HotKey descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:HotKey_FieldNumber_Code];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - Enum HotKey_KeyCode

GPBEnumDescriptor *HotKey_KeyCode_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "KeyCodeUnknown\000KeyCodeAnsiA\000KeyCodeAnsiB"
        "\000KeyCodeAnsiC\000KeyCodeAnsiD\000KeyCodeAnsiE\000"
        "KeyCodeAnsiF\000KeyCodeAnsiG\000KeyCodeAnsiH\000K"
        "eyCodeAnsiI\000KeyCodeAnsiJ\000KeyCodeAnsiK\000Ke"
        "yCodeAnsiL\000KeyCodeAnsiM\000KeyCodeAnsiN\000Key"
        "CodeAnsiO\000KeyCodeAnsiP\000KeyCodeAnsiQ\000KeyC"
        "odeAnsiR\000KeyCodeAnsiS\000KeyCodeAnsiT\000KeyCo"
        "deAnsiU\000KeyCodeAnsiV\000KeyCodeAnsiW\000KeyCod"
        "eAnsiX\000KeyCodeAnsiY\000KeyCodeAnsiZ\000KeyCode"
        "Ansi0\000KeyCodeAnsi1\000KeyCodeAnsi2\000KeyCodeA"
        "nsi3\000KeyCodeAnsi4\000KeyCodeAnsi5\000KeyCodeAn"
        "si6\000KeyCodeAnsi7\000KeyCodeAnsi8\000KeyCodeAns"
        "i9\000KeyCodeAnsiEqual\000KeyCodeAnsiMinus\000Key"
        "CodeAnsiRightBracket\000KeyCodeAnsiLeftBrac"
        "ket\000KeyCodeAnsiQuote\000KeyCodeAnsiSemicolo"
        "n\000KeyCodeAnsiBackslash\000KeyCodeAnsiComma\000"
        "KeyCodeAnsiSlash\000KeyCodeAnsiPeriod\000KeyCo"
        "deAnsiGrave\000KeyCodeAnsiKeypadDecimal\000Key"
        "CodeAnsiKeypadPlus\000KeyCodeAnsiKeypadClea"
        "r\000KeyCodeAnsiKeypadDivide\000KeyCodeAnsiKey"
        "padEnter\000KeyCodeAnsiKeypadMinus\000KeyCodeA"
        "nsiKeypadEquals\000KeyCodeAnsiKeypad0\000KeyCo"
        "deAnsiKeypad1\000KeyCodeAnsiKeypad2\000KeyCode"
        "AnsiKeypad3\000KeyCodeAnsiKeypad4\000KeyCodeAn"
        "siKeypad5\000KeyCodeAnsiKeypad6\000KeyCodeAnsi"
        "Keypad7\000KeyCodeAnsiKeypad8\000KeyCodeAnsiKe"
        "ypad9\000KeyCodeF1\000KeyCodeF2\000KeyCodeF3\000KeyC"
        "odeF4\000KeyCodeF5\000KeyCodeF6\000KeyCodeF7\000KeyC"
        "odeF8\000KeyCodeF9\000KeyCodeF10\000KeyCodeF11\000Ke"
        "yCodeF12\000KeyCodeF13\000KeyCodeF14\000KeyCodeF1"
        "5\000KeyCodeF16\000KeyCodeF17\000KeyCodeF18\000KeyCo"
        "deF19\000KeyCodeF20\000KeyCodeFunction\000KeyCode"
        "Return\000KeyCodeTab\000KeyCodeSpace\000KeyCodeDe"
        "lete\000KeyCodeEscape\000KeyCodeCommand\000KeyCod"
        "eShift\000KeyCodeCapsLock\000KeyCodeOption\000Key"
        "CodeControl\000KeyCodeRightShift\000KeyCodeRig"
        "htOption\000KeyCodeRightControl\000KeyCodeVolu"
        "meUp\000KeyCodeVolumeDown\000KeyCodeMute\000KeyCo"
        "deHelp\000KeyCodeHome\000KeyCodePageUp\000KeyCode"
        "ForwardDelete\000KeyCodeEnd\000KeyCodePageDown"
        "\000KeyCodeLeftArrow\000KeyCodeRightArrow\000KeyC"
        "odeDownArrow\000KeyCodeUpArrow\000KeyCodeIsoSe"
        "lection\000KeyCodeJisYen\000KeyCodeJisUndersco"
        "re\000KeyCodeJisKeypadComma\000KeyCodeJisEisu\000"
        "KeyCodeJisKana\000";
    static const int32_t values[] = {
        HotKey_KeyCode_KeyCodeUnknown,
        HotKey_KeyCode_KeyCodeAnsiA,
        HotKey_KeyCode_KeyCodeAnsiB,
        HotKey_KeyCode_KeyCodeAnsiC,
        HotKey_KeyCode_KeyCodeAnsiD,
        HotKey_KeyCode_KeyCodeAnsiE,
        HotKey_KeyCode_KeyCodeAnsiF,
        HotKey_KeyCode_KeyCodeAnsiG,
        HotKey_KeyCode_KeyCodeAnsiH,
        HotKey_KeyCode_KeyCodeAnsiI,
        HotKey_KeyCode_KeyCodeAnsiJ,
        HotKey_KeyCode_KeyCodeAnsiK,
        HotKey_KeyCode_KeyCodeAnsiL,
        HotKey_KeyCode_KeyCodeAnsiM,
        HotKey_KeyCode_KeyCodeAnsiN,
        HotKey_KeyCode_KeyCodeAnsiO,
        HotKey_KeyCode_KeyCodeAnsiP,
        HotKey_KeyCode_KeyCodeAnsiQ,
        HotKey_KeyCode_KeyCodeAnsiR,
        HotKey_KeyCode_KeyCodeAnsiS,
        HotKey_KeyCode_KeyCodeAnsiT,
        HotKey_KeyCode_KeyCodeAnsiU,
        HotKey_KeyCode_KeyCodeAnsiV,
        HotKey_KeyCode_KeyCodeAnsiW,
        HotKey_KeyCode_KeyCodeAnsiX,
        HotKey_KeyCode_KeyCodeAnsiY,
        HotKey_KeyCode_KeyCodeAnsiZ,
        HotKey_KeyCode_KeyCodeAnsi0,
        HotKey_KeyCode_KeyCodeAnsi1,
        HotKey_KeyCode_KeyCodeAnsi2,
        HotKey_KeyCode_KeyCodeAnsi3,
        HotKey_KeyCode_KeyCodeAnsi4,
        HotKey_KeyCode_KeyCodeAnsi5,
        HotKey_KeyCode_KeyCodeAnsi6,
        HotKey_KeyCode_KeyCodeAnsi7,
        HotKey_KeyCode_KeyCodeAnsi8,
        HotKey_KeyCode_KeyCodeAnsi9,
        HotKey_KeyCode_KeyCodeAnsiEqual,
        HotKey_KeyCode_KeyCodeAnsiMinus,
        HotKey_KeyCode_KeyCodeAnsiRightBracket,
        HotKey_KeyCode_KeyCodeAnsiLeftBracket,
        HotKey_KeyCode_KeyCodeAnsiQuote,
        HotKey_KeyCode_KeyCodeAnsiSemicolon,
        HotKey_KeyCode_KeyCodeAnsiBackslash,
        HotKey_KeyCode_KeyCodeAnsiComma,
        HotKey_KeyCode_KeyCodeAnsiSlash,
        HotKey_KeyCode_KeyCodeAnsiPeriod,
        HotKey_KeyCode_KeyCodeAnsiGrave,
        HotKey_KeyCode_KeyCodeAnsiKeypadDecimal,
        HotKey_KeyCode_KeyCodeAnsiKeypadPlus,
        HotKey_KeyCode_KeyCodeAnsiKeypadClear,
        HotKey_KeyCode_KeyCodeAnsiKeypadDivide,
        HotKey_KeyCode_KeyCodeAnsiKeypadEnter,
        HotKey_KeyCode_KeyCodeAnsiKeypadMinus,
        HotKey_KeyCode_KeyCodeAnsiKeypadEquals,
        HotKey_KeyCode_KeyCodeAnsiKeypad0,
        HotKey_KeyCode_KeyCodeAnsiKeypad1,
        HotKey_KeyCode_KeyCodeAnsiKeypad2,
        HotKey_KeyCode_KeyCodeAnsiKeypad3,
        HotKey_KeyCode_KeyCodeAnsiKeypad4,
        HotKey_KeyCode_KeyCodeAnsiKeypad5,
        HotKey_KeyCode_KeyCodeAnsiKeypad6,
        HotKey_KeyCode_KeyCodeAnsiKeypad7,
        HotKey_KeyCode_KeyCodeAnsiKeypad8,
        HotKey_KeyCode_KeyCodeAnsiKeypad9,
        HotKey_KeyCode_KeyCodeF1,
        HotKey_KeyCode_KeyCodeF2,
        HotKey_KeyCode_KeyCodeF3,
        HotKey_KeyCode_KeyCodeF4,
        HotKey_KeyCode_KeyCodeF5,
        HotKey_KeyCode_KeyCodeF6,
        HotKey_KeyCode_KeyCodeF7,
        HotKey_KeyCode_KeyCodeF8,
        HotKey_KeyCode_KeyCodeF9,
        HotKey_KeyCode_KeyCodeF10,
        HotKey_KeyCode_KeyCodeF11,
        HotKey_KeyCode_KeyCodeF12,
        HotKey_KeyCode_KeyCodeF13,
        HotKey_KeyCode_KeyCodeF14,
        HotKey_KeyCode_KeyCodeF15,
        HotKey_KeyCode_KeyCodeF16,
        HotKey_KeyCode_KeyCodeF17,
        HotKey_KeyCode_KeyCodeF18,
        HotKey_KeyCode_KeyCodeF19,
        HotKey_KeyCode_KeyCodeF20,
        HotKey_KeyCode_KeyCodeFunction,
        HotKey_KeyCode_KeyCodeReturn,
        HotKey_KeyCode_KeyCodeTab,
        HotKey_KeyCode_KeyCodeSpace,
        HotKey_KeyCode_KeyCodeDelete,
        HotKey_KeyCode_KeyCodeEscape,
        HotKey_KeyCode_KeyCodeCommand,
        HotKey_KeyCode_KeyCodeShift,
        HotKey_KeyCode_KeyCodeCapsLock,
        HotKey_KeyCode_KeyCodeOption,
        HotKey_KeyCode_KeyCodeControl,
        HotKey_KeyCode_KeyCodeRightShift,
        HotKey_KeyCode_KeyCodeRightOption,
        HotKey_KeyCode_KeyCodeRightControl,
        HotKey_KeyCode_KeyCodeVolumeUp,
        HotKey_KeyCode_KeyCodeVolumeDown,
        HotKey_KeyCode_KeyCodeMute,
        HotKey_KeyCode_KeyCodeHelp,
        HotKey_KeyCode_KeyCodeHome,
        HotKey_KeyCode_KeyCodePageUp,
        HotKey_KeyCode_KeyCodeForwardDelete,
        HotKey_KeyCode_KeyCodeEnd,
        HotKey_KeyCode_KeyCodePageDown,
        HotKey_KeyCode_KeyCodeLeftArrow,
        HotKey_KeyCode_KeyCodeRightArrow,
        HotKey_KeyCode_KeyCodeDownArrow,
        HotKey_KeyCode_KeyCodeUpArrow,
        HotKey_KeyCode_KeyCodeIsoSelection,
        HotKey_KeyCode_KeyCodeJisYen,
        HotKey_KeyCode_KeyCodeJisUnderscore,
        HotKey_KeyCode_KeyCodeJisKeypadComma,
        HotKey_KeyCode_KeyCodeJisEisu,
        HotKey_KeyCode_KeyCodeJisKana,
    };
    static const char *extraTextFormatInfo = "\024\033c\344\344\201\000\034c\344\344\201\000\035c\344\344\201\000\036c\344\344\201\000\037c\344\344\201\000 c\344\344\201\000!c\344\344\201\000\"c\344\344\201\000#c\344\344\201\000$c\344\344\201\0007c\344\344\346\201\0008c\344\344\346\201\0009c\344\344\346\201\000:c\344\344\346\201\000;c\344\344\346\201\000<c\344\344\346\201\000=c\344\344\346\201\000>c\344\344\346\201\000?c\344\344\346\201\000@c\344\344\346\201\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(HotKey_KeyCode)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:HotKey_KeyCode_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL HotKey_KeyCode_IsValidValue(int32_t value__) {
  switch (value__) {
    case HotKey_KeyCode_KeyCodeUnknown:
    case HotKey_KeyCode_KeyCodeAnsiA:
    case HotKey_KeyCode_KeyCodeAnsiB:
    case HotKey_KeyCode_KeyCodeAnsiC:
    case HotKey_KeyCode_KeyCodeAnsiD:
    case HotKey_KeyCode_KeyCodeAnsiE:
    case HotKey_KeyCode_KeyCodeAnsiF:
    case HotKey_KeyCode_KeyCodeAnsiG:
    case HotKey_KeyCode_KeyCodeAnsiH:
    case HotKey_KeyCode_KeyCodeAnsiI:
    case HotKey_KeyCode_KeyCodeAnsiJ:
    case HotKey_KeyCode_KeyCodeAnsiK:
    case HotKey_KeyCode_KeyCodeAnsiL:
    case HotKey_KeyCode_KeyCodeAnsiM:
    case HotKey_KeyCode_KeyCodeAnsiN:
    case HotKey_KeyCode_KeyCodeAnsiO:
    case HotKey_KeyCode_KeyCodeAnsiP:
    case HotKey_KeyCode_KeyCodeAnsiQ:
    case HotKey_KeyCode_KeyCodeAnsiR:
    case HotKey_KeyCode_KeyCodeAnsiS:
    case HotKey_KeyCode_KeyCodeAnsiT:
    case HotKey_KeyCode_KeyCodeAnsiU:
    case HotKey_KeyCode_KeyCodeAnsiV:
    case HotKey_KeyCode_KeyCodeAnsiW:
    case HotKey_KeyCode_KeyCodeAnsiX:
    case HotKey_KeyCode_KeyCodeAnsiY:
    case HotKey_KeyCode_KeyCodeAnsiZ:
    case HotKey_KeyCode_KeyCodeAnsi0:
    case HotKey_KeyCode_KeyCodeAnsi1:
    case HotKey_KeyCode_KeyCodeAnsi2:
    case HotKey_KeyCode_KeyCodeAnsi3:
    case HotKey_KeyCode_KeyCodeAnsi4:
    case HotKey_KeyCode_KeyCodeAnsi5:
    case HotKey_KeyCode_KeyCodeAnsi6:
    case HotKey_KeyCode_KeyCodeAnsi7:
    case HotKey_KeyCode_KeyCodeAnsi8:
    case HotKey_KeyCode_KeyCodeAnsi9:
    case HotKey_KeyCode_KeyCodeAnsiEqual:
    case HotKey_KeyCode_KeyCodeAnsiMinus:
    case HotKey_KeyCode_KeyCodeAnsiRightBracket:
    case HotKey_KeyCode_KeyCodeAnsiLeftBracket:
    case HotKey_KeyCode_KeyCodeAnsiQuote:
    case HotKey_KeyCode_KeyCodeAnsiSemicolon:
    case HotKey_KeyCode_KeyCodeAnsiBackslash:
    case HotKey_KeyCode_KeyCodeAnsiComma:
    case HotKey_KeyCode_KeyCodeAnsiSlash:
    case HotKey_KeyCode_KeyCodeAnsiPeriod:
    case HotKey_KeyCode_KeyCodeAnsiGrave:
    case HotKey_KeyCode_KeyCodeAnsiKeypadDecimal:
    case HotKey_KeyCode_KeyCodeAnsiKeypadPlus:
    case HotKey_KeyCode_KeyCodeAnsiKeypadClear:
    case HotKey_KeyCode_KeyCodeAnsiKeypadDivide:
    case HotKey_KeyCode_KeyCodeAnsiKeypadEnter:
    case HotKey_KeyCode_KeyCodeAnsiKeypadMinus:
    case HotKey_KeyCode_KeyCodeAnsiKeypadEquals:
    case HotKey_KeyCode_KeyCodeAnsiKeypad0:
    case HotKey_KeyCode_KeyCodeAnsiKeypad1:
    case HotKey_KeyCode_KeyCodeAnsiKeypad2:
    case HotKey_KeyCode_KeyCodeAnsiKeypad3:
    case HotKey_KeyCode_KeyCodeAnsiKeypad4:
    case HotKey_KeyCode_KeyCodeAnsiKeypad5:
    case HotKey_KeyCode_KeyCodeAnsiKeypad6:
    case HotKey_KeyCode_KeyCodeAnsiKeypad7:
    case HotKey_KeyCode_KeyCodeAnsiKeypad8:
    case HotKey_KeyCode_KeyCodeAnsiKeypad9:
    case HotKey_KeyCode_KeyCodeF1:
    case HotKey_KeyCode_KeyCodeF2:
    case HotKey_KeyCode_KeyCodeF3:
    case HotKey_KeyCode_KeyCodeF4:
    case HotKey_KeyCode_KeyCodeF5:
    case HotKey_KeyCode_KeyCodeF6:
    case HotKey_KeyCode_KeyCodeF7:
    case HotKey_KeyCode_KeyCodeF8:
    case HotKey_KeyCode_KeyCodeF9:
    case HotKey_KeyCode_KeyCodeF10:
    case HotKey_KeyCode_KeyCodeF11:
    case HotKey_KeyCode_KeyCodeF12:
    case HotKey_KeyCode_KeyCodeF13:
    case HotKey_KeyCode_KeyCodeF14:
    case HotKey_KeyCode_KeyCodeF15:
    case HotKey_KeyCode_KeyCodeF16:
    case HotKey_KeyCode_KeyCodeF17:
    case HotKey_KeyCode_KeyCodeF18:
    case HotKey_KeyCode_KeyCodeF19:
    case HotKey_KeyCode_KeyCodeF20:
    case HotKey_KeyCode_KeyCodeFunction:
    case HotKey_KeyCode_KeyCodeReturn:
    case HotKey_KeyCode_KeyCodeTab:
    case HotKey_KeyCode_KeyCodeSpace:
    case HotKey_KeyCode_KeyCodeDelete:
    case HotKey_KeyCode_KeyCodeEscape:
    case HotKey_KeyCode_KeyCodeCommand:
    case HotKey_KeyCode_KeyCodeShift:
    case HotKey_KeyCode_KeyCodeCapsLock:
    case HotKey_KeyCode_KeyCodeOption:
    case HotKey_KeyCode_KeyCodeControl:
    case HotKey_KeyCode_KeyCodeRightShift:
    case HotKey_KeyCode_KeyCodeRightOption:
    case HotKey_KeyCode_KeyCodeRightControl:
    case HotKey_KeyCode_KeyCodeVolumeUp:
    case HotKey_KeyCode_KeyCodeVolumeDown:
    case HotKey_KeyCode_KeyCodeMute:
    case HotKey_KeyCode_KeyCodeHelp:
    case HotKey_KeyCode_KeyCodeHome:
    case HotKey_KeyCode_KeyCodePageUp:
    case HotKey_KeyCode_KeyCodeForwardDelete:
    case HotKey_KeyCode_KeyCodeEnd:
    case HotKey_KeyCode_KeyCodePageDown:
    case HotKey_KeyCode_KeyCodeLeftArrow:
    case HotKey_KeyCode_KeyCodeRightArrow:
    case HotKey_KeyCode_KeyCodeDownArrow:
    case HotKey_KeyCode_KeyCodeUpArrow:
    case HotKey_KeyCode_KeyCodeIsoSelection:
    case HotKey_KeyCode_KeyCodeJisYen:
    case HotKey_KeyCode_KeyCodeJisUnderscore:
    case HotKey_KeyCode_KeyCodeJisKeypadComma:
    case HotKey_KeyCode_KeyCodeJisEisu:
    case HotKey_KeyCode_KeyCodeJisKana:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)