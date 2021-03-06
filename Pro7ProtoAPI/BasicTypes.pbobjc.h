// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: basicTypes.proto

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

@class URL;
@class URL_ExternalRelativePath;
@class URL_ExternalRelativePath_MacOSExternalVolume;
@class URL_ExternalRelativePath_Win32ExternalVolume;
@class URL_LocalRelativePath;
@class UUID;
@class Version;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum URL_Platform

typedef GPB_ENUM(URL_Platform) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  URL_Platform_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  URL_Platform_PlatformUnknown = 0,
  URL_Platform_PlatformMacos = 1,
  URL_Platform_PlatformWin32 = 2,
  URL_Platform_PlatformWeb = 3,
};

GPBEnumDescriptor *URL_Platform_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL URL_Platform_IsValidValue(int32_t value);

#pragma mark - Enum URL_LocalRelativePath_Root

typedef GPB_ENUM(URL_LocalRelativePath_Root) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  URL_LocalRelativePath_Root_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  URL_LocalRelativePath_Root_RootUnknown = 0,
  URL_LocalRelativePath_Root_RootBootVolume = 1,
  URL_LocalRelativePath_Root_RootUserHome = 2,
  URL_LocalRelativePath_Root_RootUserDocuments = 3,
  URL_LocalRelativePath_Root_RootUserDownloads = 4,
  URL_LocalRelativePath_Root_RootUserMusic = 5,
  URL_LocalRelativePath_Root_RootUserPictures = 6,
  URL_LocalRelativePath_Root_RootUserVideos = 7,
  URL_LocalRelativePath_Root_RootUserDesktop = 11,
  URL_LocalRelativePath_Root_RootUserAppSupport = 8,
  URL_LocalRelativePath_Root_RootShared = 9,
  URL_LocalRelativePath_Root_RootShow = 10,
  URL_LocalRelativePath_Root_RootCurrentResource = 12,
};

GPBEnumDescriptor *URL_LocalRelativePath_Root_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL URL_LocalRelativePath_Root_IsValidValue(int32_t value);

#pragma mark - Enum ApplicationInfo_Platform

typedef GPB_ENUM(ApplicationInfo_Platform) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  ApplicationInfo_Platform_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  ApplicationInfo_Platform_PlatformUndefined = 0,
  ApplicationInfo_Platform_PlatformMacos = 1,
  ApplicationInfo_Platform_PlatformWindows = 2,
};

GPBEnumDescriptor *ApplicationInfo_Platform_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL ApplicationInfo_Platform_IsValidValue(int32_t value);

#pragma mark - Enum ApplicationInfo_Application

typedef GPB_ENUM(ApplicationInfo_Application) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  ApplicationInfo_Application_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  ApplicationInfo_Application_ApplicationUndefined = 0,
  ApplicationInfo_Application_ApplicationPropresenter = 1,
  ApplicationInfo_Application_ApplicationPvp = 2,
  ApplicationInfo_Application_ApplicationProvideoserver = 3,
  ApplicationInfo_Application_ApplicationScoreboard = 4,
};

GPBEnumDescriptor *ApplicationInfo_Application_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL ApplicationInfo_Application_IsValidValue(int32_t value);

#pragma mark - Enum MusicKeyScale_MusicKey

typedef GPB_ENUM(MusicKeyScale_MusicKey) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  MusicKeyScale_MusicKey_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  MusicKeyScale_MusicKey_MusicKeyAFlat = 0,
  MusicKeyScale_MusicKey_MusicKeyA = 1,
  MusicKeyScale_MusicKey_MusicKeyASharp = 2,
  MusicKeyScale_MusicKey_MusicKeyBFlat = 3,
  MusicKeyScale_MusicKey_MusicKeyB = 4,
  MusicKeyScale_MusicKey_MusicKeyBSharp = 5,
  MusicKeyScale_MusicKey_MusicKeyCFlat = 6,
  MusicKeyScale_MusicKey_MusicKeyC = 7,
  MusicKeyScale_MusicKey_MusicKeyCSharp = 8,
  MusicKeyScale_MusicKey_MusicKeyDFlat = 9,
  MusicKeyScale_MusicKey_MusicKeyD = 10,
  MusicKeyScale_MusicKey_MusicKeyDSharp = 11,
  MusicKeyScale_MusicKey_MusicKeyEFlat = 12,
  MusicKeyScale_MusicKey_MusicKeyE = 13,
  MusicKeyScale_MusicKey_MusicKeyESharp = 14,
  MusicKeyScale_MusicKey_MusicKeyFFlat = 15,
  MusicKeyScale_MusicKey_MusicKeyF = 16,
  MusicKeyScale_MusicKey_MusicKeyFSharp = 17,
  MusicKeyScale_MusicKey_MusicKeyGFlat = 18,
  MusicKeyScale_MusicKey_MusicKeyG = 19,
  MusicKeyScale_MusicKey_MusicKeyGSharp = 20,
};

GPBEnumDescriptor *MusicKeyScale_MusicKey_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL MusicKeyScale_MusicKey_IsValidValue(int32_t value);

#pragma mark - Enum MusicKeyScale_MusicScale

typedef GPB_ENUM(MusicKeyScale_MusicScale) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  MusicKeyScale_MusicScale_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  MusicKeyScale_MusicScale_MusicScaleMajor = 0,
  MusicKeyScale_MusicScale_MusicScaleMinor = 1,
};

GPBEnumDescriptor *MusicKeyScale_MusicScale_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL MusicKeyScale_MusicScale_IsValidValue(int32_t value);

#pragma mark - BasicTypesRoot

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
GPB_FINAL @interface BasicTypesRoot : GPBRootObject
@end

#pragma mark - URL

typedef GPB_ENUM(URL_FieldNumber) {
  URL_FieldNumber_AbsoluteString = 1,
  URL_FieldNumber_RelativePath = 2,
  URL_FieldNumber_Platform = 3,
  URL_FieldNumber_Local = 4,
  URL_FieldNumber_External = 5,
};

typedef GPB_ENUM(URL_Storage_OneOfCase) {
  URL_Storage_OneOfCase_GPBUnsetOneOfCase = 0,
  URL_Storage_OneOfCase_AbsoluteString = 1,
  URL_Storage_OneOfCase_RelativePath = 2,
};

typedef GPB_ENUM(URL_RelativeFilePath_OneOfCase) {
  URL_RelativeFilePath_OneOfCase_GPBUnsetOneOfCase = 0,
  URL_RelativeFilePath_OneOfCase_Local = 4,
  URL_RelativeFilePath_OneOfCase_External = 5,
};

GPB_FINAL @interface URL : GPBMessage

@property(nonatomic, readwrite) URL_Platform platform;

@property(nonatomic, readonly) URL_Storage_OneOfCase storageOneOfCase;

@property(nonatomic, readwrite, copy, null_resettable) NSString *absoluteString;

@property(nonatomic, readwrite, copy, null_resettable) NSString *relativePath;

@property(nonatomic, readonly) URL_RelativeFilePath_OneOfCase relativeFilePathOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) URL_LocalRelativePath *local;

@property(nonatomic, readwrite, strong, null_resettable) URL_ExternalRelativePath *external;

@end

/**
 * Fetches the raw value of a @c URL's @c platform property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t URL_Platform_RawValue(URL *message);
/**
 * Sets the raw value of an @c URL's @c platform property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetURL_Platform_RawValue(URL *message, int32_t value);

/**
 * Clears whatever value was set for the oneof 'storage'.
 **/
void URL_ClearStorageOneOfCase(URL *message);
/**
 * Clears whatever value was set for the oneof 'relativeFilePath'.
 **/
void URL_ClearRelativeFilePathOneOfCase(URL *message);

#pragma mark - URL_LocalRelativePath

typedef GPB_ENUM(URL_LocalRelativePath_FieldNumber) {
  URL_LocalRelativePath_FieldNumber_Root = 1,
  URL_LocalRelativePath_FieldNumber_Path = 2,
};

GPB_FINAL @interface URL_LocalRelativePath : GPBMessage

@property(nonatomic, readwrite) URL_LocalRelativePath_Root root;

@property(nonatomic, readwrite, copy, null_resettable) NSString *path;

@end

/**
 * Fetches the raw value of a @c URL_LocalRelativePath's @c root property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t URL_LocalRelativePath_Root_RawValue(URL_LocalRelativePath *message);
/**
 * Sets the raw value of an @c URL_LocalRelativePath's @c root property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetURL_LocalRelativePath_Root_RawValue(URL_LocalRelativePath *message, int32_t value);

#pragma mark - URL_ExternalRelativePath

typedef GPB_ENUM(URL_ExternalRelativePath_FieldNumber) {
  URL_ExternalRelativePath_FieldNumber_Macos = 1,
  URL_ExternalRelativePath_FieldNumber_Win32 = 2,
  URL_ExternalRelativePath_FieldNumber_Path = 3,
};

GPB_FINAL @interface URL_ExternalRelativePath : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) URL_ExternalRelativePath_MacOSExternalVolume *macos;
/** Test to see if @c macos has been set. */
@property(nonatomic, readwrite) BOOL hasMacos;

@property(nonatomic, readwrite, strong, null_resettable) URL_ExternalRelativePath_Win32ExternalVolume *win32;
/** Test to see if @c win32 has been set. */
@property(nonatomic, readwrite) BOOL hasWin32;

@property(nonatomic, readwrite, copy, null_resettable) NSString *path;

@end

#pragma mark - URL_ExternalRelativePath_MacOSExternalVolume

typedef GPB_ENUM(URL_ExternalRelativePath_MacOSExternalVolume_FieldNumber) {
  URL_ExternalRelativePath_MacOSExternalVolume_FieldNumber_VolumeName = 1,
};

GPB_FINAL @interface URL_ExternalRelativePath_MacOSExternalVolume : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *volumeName;

@end

#pragma mark - URL_ExternalRelativePath_Win32ExternalVolume

typedef GPB_ENUM(URL_ExternalRelativePath_Win32ExternalVolume_FieldNumber) {
  URL_ExternalRelativePath_Win32ExternalVolume_FieldNumber_DriveLetter = 1,
  URL_ExternalRelativePath_Win32ExternalVolume_FieldNumber_VolumeName = 2,
  URL_ExternalRelativePath_Win32ExternalVolume_FieldNumber_NetworkShare = 3,
};

GPB_FINAL @interface URL_ExternalRelativePath_Win32ExternalVolume : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *driveLetter;

@property(nonatomic, readwrite, copy, null_resettable) NSString *volumeName;

@property(nonatomic, readwrite) BOOL networkShare;

@end

#pragma mark - URLs

typedef GPB_ENUM(URLs_FieldNumber) {
  URLs_FieldNumber_UrlsArray = 1,
};

GPB_FINAL @interface URLs : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<URL*> *urlsArray;
/** The number of items in @c urlsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger urlsArray_Count;

@end

#pragma mark - UUID

typedef GPB_ENUM(UUID_FieldNumber) {
  UUID_FieldNumber_String = 1,
};

GPB_FINAL @interface UUID : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *string;

@end

#pragma mark - IntRange

typedef GPB_ENUM(IntRange_FieldNumber) {
  IntRange_FieldNumber_Start = 1,
  IntRange_FieldNumber_End = 2,
};

GPB_FINAL @interface IntRange : GPBMessage

@property(nonatomic, readwrite) int32_t start;

@property(nonatomic, readwrite) int32_t end;

@end

#pragma mark - Color

typedef GPB_ENUM(Color_FieldNumber) {
  Color_FieldNumber_Red = 1,
  Color_FieldNumber_Green = 2,
  Color_FieldNumber_Blue = 3,
  Color_FieldNumber_Alpha = 4,
};

GPB_FINAL @interface Color : GPBMessage

@property(nonatomic, readwrite) float red;

@property(nonatomic, readwrite) float green;

@property(nonatomic, readwrite) float blue;

@property(nonatomic, readwrite) float alpha;

@end

#pragma mark - Version

typedef GPB_ENUM(Version_FieldNumber) {
  Version_FieldNumber_MajorVersion = 1,
  Version_FieldNumber_MinorVersion = 2,
  Version_FieldNumber_PatchVersion = 3,
  Version_FieldNumber_Build = 4,
};

GPB_FINAL @interface Version : GPBMessage

@property(nonatomic, readwrite) uint32_t majorVersion;

@property(nonatomic, readwrite) uint32_t minorVersion;

@property(nonatomic, readwrite) uint32_t patchVersion;

@property(nonatomic, readwrite, copy, null_resettable) NSString *build;

@end

#pragma mark - ApplicationInfo

typedef GPB_ENUM(ApplicationInfo_FieldNumber) {
  ApplicationInfo_FieldNumber_Platform = 1,
  ApplicationInfo_FieldNumber_PlatformVersion = 2,
  ApplicationInfo_FieldNumber_Application = 3,
  ApplicationInfo_FieldNumber_ApplicationVersion = 4,
};

GPB_FINAL @interface ApplicationInfo : GPBMessage

@property(nonatomic, readwrite) ApplicationInfo_Platform platform;

@property(nonatomic, readwrite, strong, null_resettable) Version *platformVersion;
/** Test to see if @c platformVersion has been set. */
@property(nonatomic, readwrite) BOOL hasPlatformVersion;

@property(nonatomic, readwrite) ApplicationInfo_Application application;

@property(nonatomic, readwrite, strong, null_resettable) Version *applicationVersion;
/** Test to see if @c applicationVersion has been set. */
@property(nonatomic, readwrite) BOOL hasApplicationVersion;

@end

/**
 * Fetches the raw value of a @c ApplicationInfo's @c platform property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t ApplicationInfo_Platform_RawValue(ApplicationInfo *message);
/**
 * Sets the raw value of an @c ApplicationInfo's @c platform property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetApplicationInfo_Platform_RawValue(ApplicationInfo *message, int32_t value);

/**
 * Fetches the raw value of a @c ApplicationInfo's @c application property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t ApplicationInfo_Application_RawValue(ApplicationInfo *message);
/**
 * Sets the raw value of an @c ApplicationInfo's @c application property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetApplicationInfo_Application_RawValue(ApplicationInfo *message, int32_t value);

#pragma mark - CollectionElementType

typedef GPB_ENUM(CollectionElementType_FieldNumber) {
  CollectionElementType_FieldNumber_ParameterUuid = 1,
  CollectionElementType_FieldNumber_ParameterName = 2,
};

GPB_FINAL @interface CollectionElementType : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) UUID *parameterUuid;
/** Test to see if @c parameterUuid has been set. */
@property(nonatomic, readwrite) BOOL hasParameterUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *parameterName;

@end

#pragma mark - MusicKeyScale

typedef GPB_ENUM(MusicKeyScale_FieldNumber) {
  MusicKeyScale_FieldNumber_MusicKey = 1,
  MusicKeyScale_FieldNumber_MusicScale = 2,
};

GPB_FINAL @interface MusicKeyScale : GPBMessage

@property(nonatomic, readwrite) MusicKeyScale_MusicKey musicKey;

@property(nonatomic, readwrite) MusicKeyScale_MusicScale musicScale;

@end

/**
 * Fetches the raw value of a @c MusicKeyScale's @c musicKey property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t MusicKeyScale_MusicKey_RawValue(MusicKeyScale *message);
/**
 * Sets the raw value of an @c MusicKeyScale's @c musicKey property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetMusicKeyScale_MusicKey_RawValue(MusicKeyScale *message, int32_t value);

/**
 * Fetches the raw value of a @c MusicKeyScale's @c musicScale property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t MusicKeyScale_MusicScale_RawValue(MusicKeyScale *message);
/**
 * Sets the raw value of an @c MusicKeyScale's @c musicScale property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetMusicKeyScale_MusicScale_RawValue(MusicKeyScale *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
