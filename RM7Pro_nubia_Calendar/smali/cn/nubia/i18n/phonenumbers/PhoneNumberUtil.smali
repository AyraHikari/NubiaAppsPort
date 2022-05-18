.class public Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;,
        Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;,
        Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    }
.end annotation


# static fields
.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CAPTURING_EXTN_DIGITS:Ljava/lang/String; = "(\\p{Nd}{1,7})"

.field private static final CC_PATTERN:Ljava/util/regex/Pattern;

.field private static final COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX:Ljava/lang/String; = "3"

.field private static final DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field private static final DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0x10

.field static final META_DATA_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

.field private static final MIN_LENGTH_FOR_NSN:I = 0x3

.field private static final NANPA_COUNTRY_CODE:I = 0x1

.field private static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_SIGN:C = '+'

.field static final REGEX_FLAGS:I = 0x42

.field public static final REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final STAR_SIGN:C = '*'

.field private static final UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;


# instance fields
.field private countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private currentFilePrefix:Ljava/lang/String;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

.field private final regionToMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/16 v14, 0x33

    const/16 v13, 0x32

    const/16 v12, 0x39

    const/16 v10, 0x37

    const/16 v11, 0x2d

    .line 72
    const-class v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v8, 0x30

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x30

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v8, 0x31

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x31

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 v8, 0x34

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v8, 0x35

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/16 v8, 0x36

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v8, 0x38

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    const/16 v8, 0x28

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    .local v1, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v8, 0x41

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v8, 0x42

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v8, 0x43

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v8, 0x44

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v8, 0x45

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v8, 0x46

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v8, 0x47

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v8, 0x48

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/16 v8, 0x49

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v8, 0x4a

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v8, 0x4b

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v8, 0x4c

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/16 v8, 0x4d

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v8, 0x4e

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v8, 0x4f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v8, 0x50

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v8, 0x51

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v8, 0x52

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v8, 0x53

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v8, 0x54

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v8, 0x55

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v8, 0x56

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v8, 0x57

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v8, 0x58

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v8, 0x59

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v8, 0x5a

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 164
    new-instance v4, Ljava/util/HashMap;

    const/16 v8, 0x64

    invoke-direct {v4, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 165
    .local v4, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 166
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 167
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 169
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v5, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 171
    const/16 v8, 0x2b

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2b

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v8, 0x2a

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2a

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 178
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    .end local v3    # "c":C
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 183
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const v8, 0xff0d

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/16 v8, 0x2010

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/16 v8, 0x2011

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/16 v8, 0x2012

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/16 v8, 0x2013

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/16 v8, 0x2014

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/16 v8, 0x2015

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/16 v8, 0x2212

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v8, 0x2f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const v8, 0xff0f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v8, 0x20

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/16 v8, 0x3000

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/16 v8, 0x2060

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const/16 v8, 0x2e

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const v8, 0xff0e

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 208
    const-string v8, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 209
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 223
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "[, \\[\\]]"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 224
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[, \\[\\]]"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 226
    const-string v8, "[+\uff0b]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 227
    const-string v8, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 228
    const-string v8, "(\\p{Nd})"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 237
    const-string v8, "[+\uff0b\\p{Nd}]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 245
    const-string v8, "[\\\\/] *x"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 251
    const-string v8, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 255
    const-string v8, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\p{Nd}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 286
    const-string v6, "x\uff58#\uff03~\uff5e"

    .line 290
    .local v6, "singleExtnSymbolsForMatching":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "singleExtnSymbolsForParsing":Ljava/lang/String;
    invoke-static {v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 293
    invoke-static {v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x42

    .line 321
    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x42

    .line 326
    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 328
    const-string v8, "(\\D+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 334
    const-string v8, "(\\$\\d)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 335
    const-string v8, "\\$NP"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 336
    const-string v8, "\\$FG"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 337
    const-string v8, "\\$CC"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 339
    const/4 v8, 0x0

    sput-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 349
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    .line 354
    new-instance v0, Lcn/nubia/i18n/phonenumbers/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcn/nubia/i18n/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 677
    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    .prologue
    .line 2618
    invoke-direct {p0, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2620
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 2621
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2622
    :cond_0
    const/4 v0, 0x0

    .line 2625
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 6
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .prologue
    .line 1706
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1707
    .local v1, "numFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v2

    .line 1708
    .local v2, "size":I
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    add-int/lit8 v5, v2, -0x1

    .line 1710
    invoke-virtual {v1, v5}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    .line 1708
    invoke-virtual {v4, v5}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1710
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1711
    :cond_1
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1712
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1717
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "numFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "size":I
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 713
    if-eqz p0, :cond_0

    .line 715
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertAlphaCharactersInNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 843
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createExtnPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "singleExtnSymbols"    # Ljava/lang/String;

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]|int|anexo|\uff49\uff4e\uff54)[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\\p{Nd}{1,7})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#?|[- ]+("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{1,5})#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 738
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 739
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 740
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 742
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 743
    .local v2, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 745
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stripped trailing characters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 748
    :cond_0
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 749
    .local v1, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 754
    .end local v1    # "secondNumber":Ljava/util/regex/Matcher;
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    .end local p0    # "number":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "number":Ljava/lang/String;
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method private formatNsn(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1680
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatNsn(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1691
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v2

    .line 1695
    .local v2, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_1

    .line 1696
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 1698
    .local v0, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-direct {p0, v0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1699
    .local v1, "formattingPattern":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v1, :cond_2

    .end local p1    # "number":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 1697
    .end local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v1    # "formattingPattern":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1701
    .restart local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .restart local v1    # "formattingPattern":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_2
    invoke-direct {p0, p1, v1, p3, p4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private formatNsnUsingPattern(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1724
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatNsnUsingPattern(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1733
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 1734
    .local v6, "numberFormatRule":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 1735
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1736
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 1737
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_2

    if-eqz p4, :cond_2

    .line 1738
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1739
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1741
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 1742
    .local v0, "carrierCodeFormattingRule":Ljava/lang/String;
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 1743
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1746
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1747
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1748
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1762
    .end local v0    # "carrierCodeFormattingRule":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_1

    .line 1764
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1765
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1766
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1769
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1771
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2

    .line 1751
    :cond_2
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1752
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_3

    if-eqz v5, :cond_3

    .line 1754
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1755
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1757
    .local v1, "firstGroupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1758
    goto :goto_0

    .line 1759
    .end local v1    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCountryCodeForValidRegion(Ljava/lang/String;)I
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2114
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2115
    .local v0, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    .locals 3

    .prologue
    .line 1048
    const-class v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 1049
    const-string v0, "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    .line 1050
    invoke-static {}, Lcn/nubia/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v2

    .line 1049
    invoke-static {v0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getInstance(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1052
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getInstance(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2
    .param p0, "baseFileLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;"
        }
    .end annotation

    .prologue
    .line 1006
    .local p1, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;-><init>()V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .line 1008
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    iput-object p1, v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 1009
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct {v0, p0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->init(Ljava/lang/String;)V

    .line 1011
    :cond_0
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "countryCallingCode"    # I
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1225
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1225
    :goto_0
    return-object v0

    .line 1227
    :cond_0
    invoke-virtual {p0, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 1904
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1905
    .local v0, "generalNumberDesc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1906
    invoke-direct {p0, p1, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1907
    :cond_0
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 1950
    :goto_0
    return-object v2

    .line 1910
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1911
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1913
    :cond_2
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1914
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1916
    :cond_3
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1917
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1919
    :cond_4
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1920
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1922
    :cond_5
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1923
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1925
    :cond_6
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1926
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1928
    :cond_7
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1929
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1931
    :cond_8
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1932
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1935
    :cond_9
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    .line 1936
    .local v1, "isFixedLine":Z
    if-eqz v1, :cond_c

    .line 1937
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1938
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1939
    :cond_a
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1940
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 1942
    :cond_b
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 1946
    :cond_c
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1947
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1948
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 1950
    :cond_d
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0
.end method

.method private getRegionCodeForNumberFromRegionList(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2062
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2065
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2066
    .local v0, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2067
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 2068
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2075
    .end local v0    # "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2071
    .restart local v0    # "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v2    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 2075
    .end local v0    # "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasFormattingPatternForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x0

    .line 1516
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1517
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1519
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1520
    .local v2, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v2, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return v5

    .line 1523
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1525
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1526
    .local v1, "formatRule":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private hasUnexpectedItalianLeadingZero(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 1
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1512
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isLeadingZeroPossible(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidCountryCallingCode(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1066
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePrefix"    # Ljava/lang/String;

    .prologue
    .line 680
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    .line 681
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 682
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 684
    .end local v0    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    const-string v2, "001"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 685
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 686
    return-void
.end method

.method private isNationalNumberSuffixOfTheOther(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "firstNumber"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2928
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2929
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2931
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2932
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 2931
    :goto_0
    return v2

    .line 2932
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 4
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 1980
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 1981
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1982
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1983
    .local v1, "possibleNumberPatternMatcher":Ljava/util/regex/Matcher;
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 1984
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1985
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1986
    .local v0, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1059
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isViablePhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 770
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 771
    const/4 v1, 0x0

    .line 774
    :goto_0
    return v1

    .line 773
    :cond_0
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 774
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "countryCallingCode"    # I

    .prologue
    .line 689
    const-string v7, "001"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 690
    .local v3, "isNonGeoRegion":Z
    if-eqz v3, :cond_0

    const-class v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 691
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 693
    .local v6, "source":Ljava/io/InputStream;
    :goto_0
    const/4 v1, 0x0

    .line 695
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 696
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v5, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v5}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 697
    .local v5, "metadataCollection":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v5, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 698
    invoke-virtual {v5}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 699
    .local v4, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v3, :cond_1

    .line 700
    iget-object v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 705
    .end local v4    # "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "metadataCollection":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 706
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :goto_2
    :try_start_2
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 708
    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->close(Ljava/io/InputStream;)V

    .line 710
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 691
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v6    # "source":Ljava/io/InputStream;
    :cond_0
    const-class v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 692
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0

    .line 702
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v5    # "metadataCollection":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v6    # "source":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v8, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 708
    .end local v4    # "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "metadataCollection":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catchall_0
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :goto_4
    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->close(Ljava/io/InputStream;)V

    .line 709
    throw v7

    .line 708
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v5    # "metadataCollection":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :cond_2
    invoke-static {v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 709
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 708
    .end local v5    # "metadataCollection":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catchall_1
    move-exception v7

    goto :goto_4

    .line 705
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private maybeAppendFormattedExtension(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1846
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1847
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_1

    .line 1848
    const-string v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1851
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1853
    :cond_2
    const-string v0, " ext. "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 794
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 795
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 798
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static normalize(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 810
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "normalizedNumber":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    return-void
.end method

.method private static normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "keepNonDigits"    # Z

    .prologue
    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 827
    .local v2, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-char v0, v4, v3

    .line 828
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 829
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 830
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 827
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 831
    :cond_1
    if-eqz p1, :cond_0

    .line 832
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 835
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2
    return-object v2
.end method

.method public static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 822
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p2, "removeNonMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 989
    .local v2, "normalizedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 990
    .local v3, "numberAsCharArray":[C
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-char v0, v3, v4

    .line 991
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 992
    .local v1, "newDigit":Ljava/lang/Character;
    if-eqz v1, :cond_1

    .line 993
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 990
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 994
    :cond_1
    if-nez p2, :cond_0

    .line 995
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 999
    .end local v0    # "character":C
    .end local v1    # "newDigit":Ljava/lang/Character;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 17
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2746
    if-nez p1, :cond_0

    .line 2747
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The phone number supplied was null."

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2749
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_1

    .line 2750
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied was too long to parse."

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2755
    :cond_1
    invoke-static/range {p1 .. p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2756
    .local v15, "number":Ljava/lang/String;
    invoke-static {v15}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2757
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied did not seem to be a phone number."

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2763
    :cond_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2764
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "Missing or invalid default region."

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2768
    :cond_3
    if-eqz p3, :cond_4

    .line 2769
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2771
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2774
    .local v14, "nationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 2775
    .local v11, "extension":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 2776
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2779
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 2782
    .local v4, "regionMetadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2783
    .local v5, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 2788
    .local v9, "countryCode":I
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    :try_end_0
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2806
    :cond_6
    if-eqz v9, :cond_9

    .line 2807
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v16

    .line 2808
    .local v16, "phoneNumberRegion":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2809
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 2823
    .end local v16    # "phoneNumberRegion":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_b

    .line 2824
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too short to be a phone number."

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2790
    :catch_0
    move-exception v10

    .line 2791
    .local v10, "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 2792
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Lcn/nubia/i18n/phonenumbers/NumberParseException;->getErrorType()Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_8

    .line 2793
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2795
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v9

    .line 2798
    if-nez v9, :cond_6

    .line 2799
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "Could not interpret numbers after plus-sign."

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2803
    :cond_8
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    invoke-virtual {v10}, Lcn/nubia/i18n/phonenumbers/NumberParseException;->getErrorType()Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    invoke-virtual {v10}, Lcn/nubia/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2814
    .end local v10    # "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    invoke-static {v14}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2815
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2816
    if-eqz p2, :cond_a

    .line 2817
    invoke-virtual {v4}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v9

    .line 2818
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2819
    :cond_a
    if-eqz p3, :cond_7

    .line 2820
    invoke-virtual/range {p5 .. p5}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2827
    :cond_b
    if-eqz v4, :cond_c

    .line 2828
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2829
    .local v8, "carrierCode":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v8}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2830
    if-eqz p3, :cond_c

    .line 2831
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2834
    .end local v8    # "carrierCode":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 2835
    .local v12, "lengthOfNationalNumber":I
    const/4 v2, 0x3

    if-ge v12, v2, :cond_d

    .line 2836
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too short to be a phone number."

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2839
    :cond_d
    const/16 v2, 0x10

    if-le v12, v2, :cond_e

    .line 2840
    new-instance v2, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too long to be a phone number."

    invoke-direct {v2, v3, v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2843
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_f

    .line 2844
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2846
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2847
    return-void
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2471
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2472
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2473
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 2476
    .local v2, "matchEnd":I
    sget-object v6, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2477
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2478
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2479
    .local v3, "normalizedGroup":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2486
    .end local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "matchEnd":I
    .end local v3    # "normalizedGroup":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 2483
    .restart local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .restart local v2    # "matchEnd":I
    :cond_1
    invoke-virtual {p2, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v4, v5

    .line 2484
    goto :goto_0
.end method

.method private prefixNumberWithCountryCallingCode(ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x2b

    const/4 v2, 0x0

    .line 1661
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$cn$nubia$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1674
    :goto_0
    return-void

    .line 1663
    :pswitch_0
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1666
    :pswitch_1
    const-string v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1669
    :pswitch_2
    const-string v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tel:"

    .line 1670
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "nationalPrefix"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1491
    invoke-static {p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1492
    .local v1, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1499
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 1498
    invoke-virtual {p0, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1504
    :cond_0
    :goto_0
    return v2

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    goto :goto_0
.end method

.method static declared-synchronized resetInstance()V
    .locals 2

    .prologue
    .line 1019
    const-class v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    monitor-exit v0

    return-void

    .line 1019
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 2
    .param p1, "numberPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2214
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2215
    .local v0, "numberMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2216
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2221
    :goto_0
    return-object v1

    .line 2218
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2219
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2221
    :cond_1
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0
.end method


# virtual methods
.method canBeInternationallyDialled(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 5
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x1

    .line 3031
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 3032
    .local v2, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3039
    :cond_0
    :goto_0
    return v3

    .line 3037
    :cond_1
    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3038
    .local v0, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 3039
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 2345
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 2358
    :goto_0
    return v2

    .line 2350
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2351
    .local v1, "numberLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x3

    if-gt v0, v4, :cond_3

    if-gt v0, v1, :cond_3

    .line 2352
    invoke-virtual {p1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2353
    .local v2, "potentialCountryCode":I
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2354
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2351
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "potentialCountryCode":I
    :cond_3
    move v2, v3

    .line 2358
    goto :goto_0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2708
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "leniency"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p4, "maxTries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
            "J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2729
    new-instance v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$1;-><init>(Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v1
.end method

.method public format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1084
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1085
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "rawInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1092
    .end local v1    # "rawInput":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1090
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1091
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1102
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1103
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1104
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v4, :cond_0

    .line 1108
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v4, p3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1127
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 1117
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1118
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1123
    :cond_1
    invoke-direct {p0, v0, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1124
    .local v1, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v1, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-direct {p0, p1, v1, p2, p3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1126
    invoke-direct {p0, v0, p2, p3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public formatByPattern(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1143
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1144
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    .line 1148
    .local v6, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1149
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1188
    .end local v6    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1153
    .restart local v6    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, v8}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1155
    .local v3, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1158
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-direct {p0, p3, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 1159
    .local v2, "formattingPattern":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_1

    .line 1161
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    :goto_1
    invoke-direct {p0, p1, v3, p2, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1187
    invoke-direct {p0, v0, p2, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1163
    :cond_1
    new-instance v7, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1167
    .local v7, "numFormatCopy":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1168
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1169
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1170
    invoke-virtual {v3}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1171
    .local v4, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1173
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 1174
    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1175
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 1176
    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "\\$1"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1177
    invoke-virtual {v7, v5}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1184
    .end local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-direct {p0, v6, v7, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    .line 1183
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1180
    .restart local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_2
.end method

.method public formatInOriginalFormat(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1406
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1407
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasUnexpectedItalianLeadingZero(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1410
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    .line 1481
    :cond_1
    :goto_0
    return-object v2

    .line 1412
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1413
    sget-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1416
    :cond_3
    sget-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$cn$nubia$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v13

    invoke-virtual {v13}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1429
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v12

    invoke-virtual {p0, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v11

    .line 1432
    .local v11, "regionCode":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 1433
    .local v7, "nationalPrefix":Ljava/lang/String;
    sget-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    .line 1434
    .local v5, "nationalFormat":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_6

    .line 1437
    :cond_4
    move-object v2, v5

    .line 1478
    .end local v5    # "nationalFormat":Ljava/lang/String;
    .end local v7    # "nationalPrefix":Ljava/lang/String;
    .end local v11    # "regionCode":Ljava/lang/String;
    .local v2, "formattedNumber":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v10

    .line 1481
    .local v10, "rawInput":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1482
    invoke-static {v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    :cond_5
    move-object v2, v10

    goto :goto_0

    .line 1418
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v10    # "rawInput":Ljava/lang/String;
    :pswitch_0
    sget-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1421
    .end local v2    # "formattedNumber":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1422
    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1424
    .end local v2    # "formattedNumber":Ljava/lang/String;
    :pswitch_2
    sget-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1425
    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1442
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .restart local v5    # "nationalFormat":Ljava/lang/String;
    .restart local v7    # "nationalPrefix":Ljava/lang/String;
    .restart local v11    # "regionCode":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v12

    .line 1441
    invoke-direct {p0, v12, v7, v11}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1444
    move-object v2, v5

    .line 1445
    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1447
    .end local v2    # "formattedNumber":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v11}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 1448
    .local v4, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    .line 1450
    .local v6, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v4}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v12, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1454
    .local v1, "formatRule":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 1456
    .local v0, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string v12, "$1"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1457
    .local v3, "indexOfFirstGroup":I
    if-gtz v3, :cond_8

    .line 1458
    move-object v2, v5

    .line 1459
    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1461
    .end local v2    # "formattedNumber":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    .line 1462
    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9

    .line 1466
    move-object v2, v5

    .line 1467
    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1470
    .end local v2    # "formattedNumber":Ljava/lang/String;
    :cond_9
    new-instance v8, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v8}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1471
    .local v8, "numFormatCopy":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v8, v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1472
    invoke-virtual {v8}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1473
    new-instance v9, Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1474
    .local v9, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    sget-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v12, v9}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 1416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public formatNationalNumberWithCarrierCode(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1203
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1204
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1209
    .local v4, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1220
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1213
    .restart local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1214
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1215
    .local v2, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v3, v2, v5, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v2, v5, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1218
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v5, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public formatNationalNumberWithPreferredCarrierCode(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/String;

    .prologue
    .line 1249
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    .line 1249
    .end local p2    # "fallbackCarrierCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatNumberForMobileDialing(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;
    .param p3, "withFormatting"    # Z

    .prologue
    .line 1268
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1269
    .local v0, "countryCallingCode":I
    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1270
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v5

    .line 1306
    :goto_0
    return-object v5

    .line 1270
    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 1275
    :cond_1
    new-instance v5, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v5}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v5, p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1276
    .local v2, "numberNoExt":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    .line 1277
    .local v3, "numberType":Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1278
    .local v4, "regionCode":Ljava/lang/String;
    const-string v5, "CO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "CO"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1279
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v3, v5, :cond_2

    .line 1280
    const-string v5, "3"

    .line 1281
    invoke-virtual {p0, v2, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, "formattedNumber":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_b

    .end local v1    # "formattedNumber":Ljava/lang/String;
    :goto_2
    move-object v5, v1

    goto :goto_0

    .line 1284
    :cond_2
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v2, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1286
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_3
    const-string v5, "PE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "PE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1289
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v2, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1290
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_4
    const-string v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "BR"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v3, v5, :cond_5

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v3, v5, :cond_5

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v3, v5, :cond_7

    .line 1293
    :cond_5
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, ""

    .line 1294
    invoke-virtual {p0, v2, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "formattedNumber":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_6
    const-string v1, ""

    goto :goto_3

    .line 1299
    :cond_7
    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1300
    if-eqz p3, :cond_8

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v2, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_8
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1301
    invoke-virtual {p0, v2, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1303
    :cond_9
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1304
    invoke-virtual {p0, v2, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "formattedNumber":Ljava/lang/String;
    :goto_4
    goto :goto_1

    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_a
    const-string v1, ""

    goto :goto_4

    .line 1306
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    :cond_b
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/4 v6, 0x1

    .line 1307
    invoke-static {v1, v5, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public formatOutOfCountryCallingNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1330
    invoke-direct {p0, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1331
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trying to format number from invalid region "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". International formatting applied."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1335
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    .line 1386
    :cond_0
    :goto_0
    return-object v7

    .line 1337
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1338
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v7

    .line 1339
    .local v7, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1342
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 1343
    invoke-virtual {p0, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v10}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1348
    :cond_2
    invoke-direct {p0, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v9

    if-ne v0, v9, :cond_3

    .line 1355
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1357
    :cond_3
    invoke-virtual {p0, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v6

    .line 1358
    .local v6, "metadataForRegionCallingFrom":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v6}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v3

    .line 1362
    .local v3, "internationalPrefix":Ljava/lang/String;
    const-string v4, ""

    .line 1363
    .local v4, "internationalPrefixForFormatting":Ljava/lang/String;
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1364
    move-object v4, v3

    .line 1370
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1372
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v5

    .line 1373
    .local v5, "metadataForRegion":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1374
    invoke-direct {p0, v7, v5, v9}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1375
    .local v1, "formattedNationalNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v2, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v5, v9, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1378
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1379
    const-string v9, " "

    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v11, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1380
    invoke-virtual {v9, v11, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1365
    .end local v1    # "formattedNationalNumber":Ljava/lang/String;
    .end local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v5    # "metadataForRegion":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v8    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1367
    invoke-virtual {v6}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1382
    .restart local v1    # "formattedNationalNumber":Ljava/lang/String;
    .restart local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v5    # "metadataForRegion":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v8    # "regionCode":Ljava/lang/String;
    :cond_6
    sget-object v9, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v9, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public formatOutOfCountryKeepingAlphaChars(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1555
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v12

    .line 1558
    .local v12, "rawInput":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    .line 1559
    invoke-virtual/range {p0 .. p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1638
    :goto_0
    return-object v14

    .line 1561
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 1562
    .local v2, "countryCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v12

    .line 1563
    goto :goto_0

    .line 1569
    :cond_1
    sget-object v14, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v12

    .line 1574
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    .line 1575
    .local v10, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_2

    .line 1576
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1577
    .local v3, "firstNationalNumberDigit":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_2

    .line 1578
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1581
    .end local v3    # "firstNationalNumberDigit":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v9

    .line 1582
    .local v9, "metadataForRegionCallingFrom":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v14, 0x1

    if-ne v2, v14, :cond_3

    .line 1583
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1584
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 1586
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1587
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v14

    if-ne v2, v14, :cond_5

    .line 1589
    invoke-virtual {v9}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 1591
    .local v5, "formattingPattern":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v5, :cond_4

    move-object v14, v12

    .line 1593
    goto :goto_0

    .line 1595
    :cond_4
    new-instance v11, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v11}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1596
    .local v11, "newFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v11, v5}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1598
    const-string v14, "(\\d+)(.*)"

    invoke-virtual {v11, v14}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1600
    const-string v14, "$1$2"

    invoke-virtual {v11, v14}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1606
    sget-object v14, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v14}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 1608
    .end local v5    # "formattingPattern":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v11    # "newFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_5
    const-string v7, ""

    .line 1612
    .local v7, "internationalPrefixForFormatting":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 1613
    invoke-virtual {v9}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1614
    .local v6, "internationalPrefix":Ljava/lang/String;
    sget-object v14, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 1615
    invoke-virtual {v14, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v7, v6

    .line 1619
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1620
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v13

    .line 1621
    .local v13, "regionCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v8

    .line 1622
    .local v8, "metadataForRegion":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v14, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v14, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1624
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 1625
    const/4 v14, 0x0

    const-string v15, " "

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, " "

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    .line 1626
    invoke-virtual {v14, v15, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 1617
    .end local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v8    # "metadataForRegion":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v13    # "regionCode":Ljava/lang/String;
    .restart local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1630
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    .restart local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v8    # "metadataForRegion":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v13    # "regionCode":Ljava/lang/String;
    :cond_8
    sget-object v14, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Trying to format number from invalid region "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". International formatting applied."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1634
    sget-object v14, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public getAsYouTypeFormatter(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2337
    new-instance v0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-direct {v0, p1}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCountryCodeForRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2096
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2097
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or missing region code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2101
    const/4 v0, 0x0

    .line 2103
    :goto_0
    return v0

    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getExampleNumber(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1783
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getExampleNumberForNonGeoEntity(I)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1822
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1823
    .local v2, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1

    .line 1824
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1826
    .local v0, "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZZ"

    invoke-virtual {p0, v3, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1836
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :goto_0
    return-object v3

    .line 1829
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :catch_0
    move-exception v1

    .line 1830
    .local v1, "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1836
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v1    # "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1833
    :cond_1
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unknown country calling code provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getExampleNumberForType(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    const/4 v2, 0x0

    .line 1798
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1799
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unknown region code provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1810
    :cond_0
    :goto_0
    return-object v2

    .line 1802
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1804
    .local v0, "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1805
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1807
    :catch_0
    move-exception v1

    .line 1808
    .local v1, "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLengthOfGeographicalAreaCode(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 5
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x0

    .line 887
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v3

    .line 891
    :cond_1
    invoke-virtual {p0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 892
    .local v0, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 896
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    .line 899
    .local v2, "type":Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v2, v4, :cond_2

    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v2, v4, :cond_0

    .line 903
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v3

    goto :goto_0
.end method

.method public getLengthOfNationalDestinationCode(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 6
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x3

    .line 939
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 942
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 943
    .local v0, "copiedProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 944
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 949
    :goto_0
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 955
    .local v2, "numberGroups":[Ljava/lang/String;
    array-length v3, v2

    if-gt v3, v5, :cond_1

    .line 956
    const/4 v3, 0x0

    .line 969
    :goto_1
    return v3

    .line 946
    .end local v0    # "copiedProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v1    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v2    # "numberGroups":[Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "copiedProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_0

    .line 959
    .restart local v1    # "nationalSignificantNumber":Ljava/lang/String;
    .restart local v2    # "numberGroups":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 960
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v3, v4, :cond_2

    .line 967
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 969
    :cond_2
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1
.end method

.method getMetadataForNonGeographicalRegion(I)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1968
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 1969
    :try_start_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1970
    const/4 v0, 0x0

    monitor-exit v1

    .line 1976
    :goto_0
    return-object v0

    .line 1972
    :cond_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1973
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    const-string v2, "001"

    invoke-direct {p0, v0, v2, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1975
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1976
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 1975
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1954
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1955
    const/4 v0, 0x0

    .line 1964
    :goto_0
    return-object v0

    .line 1957
    :cond_0
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 1958
    :try_start_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1961
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1963
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 1963
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1651
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1650
    .end local v0    # "nationalNumber":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2133
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2134
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing region code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") provided."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v1, v2

    .line 2151
    :cond_1
    :goto_0
    return-object v1

    .line 2140
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2141
    .local v0, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 2143
    .local v1, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 2144
    goto :goto_0

    .line 2146
    :cond_3
    if-eqz p2, :cond_1

    .line 2149
    const-string v2, "~"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getNumberDescByType(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 2
    .param p1, "metadata"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "type"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    .line 1860
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$cn$nubia$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1883
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1862
    :pswitch_0
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1864
    :pswitch_1
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1866
    :pswitch_2
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1869
    :pswitch_3
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1871
    :pswitch_4
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1873
    :pswitch_5
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1875
    :pswitch_6
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1877
    :pswitch_7
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1879
    :pswitch_8
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1881
    :pswitch_9
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1860
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getNumberType(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 4
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1894
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1895
    .local v2, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "001"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1896
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 1900
    :goto_0
    return-object v3

    .line 1898
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1899
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1900
    .local v0, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v1, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    goto :goto_0
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2084
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2085
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const-string v1, "ZZ"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRegionCodeForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2045
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2046
    .local v0, "countryCode":I
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2047
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 2048
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2049
    .local v1, "numberString":Ljava/lang/String;
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing/invalid country_code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2051
    const/4 v3, 0x0

    .line 2056
    .end local v1    # "numberString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2053
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2054
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 2056
    :cond_1
    invoke-direct {p0, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    return-object v0
.end method

.method public isAlphaNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2188
    invoke-static {p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2190
    const/4 v1, 0x0

    .line 2194
    :goto_0
    return v1

    .line 2192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2193
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2194
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method isLeadingZeroPossible(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2169
    .line 2170
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 2169
    invoke-virtual {p0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2171
    .local v0, "mainMetadataForCallingCode":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2172
    const/4 v1, 0x0

    .line 2174
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isLeadingZeroPossible()Z

    move-result v1

    goto :goto_0
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2160
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 6
    .param p1, "firstNumberIn"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2871
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2872
    .local v0, "firstNumber":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2873
    new-instance v2, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2874
    .local v2, "secondNumber":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2877
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2878
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2879
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2880
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2881
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2882
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2883
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2884
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 2885
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2887
    :cond_0
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2888
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2889
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2892
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2893
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2894
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 2922
    :goto_0
    return-object v4

    .line 2896
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 2897
    .local v1, "firstNumberCountryCode":I
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 2899
    .local v3, "secondNumberCountryCode":I
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 2900
    invoke-virtual {v0, v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2901
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 2902
    :cond_3
    if-ne v1, v3, :cond_4

    .line 2903
    invoke-direct {p0, v0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2907
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 2910
    :cond_4
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 2914
    :cond_5
    invoke-virtual {v0, v3}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2916
    invoke-virtual {v0, v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2917
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 2919
    :cond_6
    invoke-direct {p0, v0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2920
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 2922
    :cond_7
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method public isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 11
    .param p1, "firstNumber"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 2988
    :try_start_0
    const-string v0, "ZZ"

    invoke-virtual {p0, p2, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v9

    .line 2989
    .local v9, "secondNumberAsProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v9}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3017
    .end local v9    # "secondNumberAsProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v8

    .line 2990
    :catch_0
    move-exception v6

    .line 2991
    .local v6, "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v6}, Lcn/nubia/i18n/phonenumbers/NumberParseException;->getErrorType()Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_2

    .line 2995
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v7

    .line 2997
    .local v7, "firstNumberRegion":Ljava/lang/String;
    :try_start_1
    const-string v0, "ZZ"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2998
    invoke-virtual {p0, p2, v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    .line 2999
    .local v10, "secondNumberWithFirstNumberRegion":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v10}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v8

    .line 3000
    .local v8, "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v8, v0, :cond_0

    .line 3001
    sget-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3007
    .end local v8    # "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .end local v10    # "secondNumberWithFirstNumberRegion":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1
    new-instance v5, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v5}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3008
    .local v5, "secondNumberProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3009
    invoke-virtual {p0, p1, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 3011
    .end local v5    # "secondNumberProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v0

    .line 3017
    .end local v7    # "firstNumberRegion":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method public isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 19
    .param p1, "firstNumber"    # Ljava/lang/String;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 2948
    :try_start_0
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v17

    .line 2949
    .local v17, "firstNumberAsProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2971
    .end local v17    # "firstNumberAsProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    return-object v3

    .line 2950
    :catch_0
    move-exception v15

    .line 2951
    .local v15, "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v15}, Lcn/nubia/i18n/phonenumbers/NumberParseException;->getErrorType()Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 2953
    :try_start_1
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v18

    .line 2954
    .local v18, "secondNumberAsProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 2955
    .end local v18    # "secondNumberAsProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v16

    .line 2956
    .local v16, "e2":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    invoke-virtual/range {v16 .. v16}, Lcn/nubia/i18n/phonenumbers/NumberParseException;->getErrorType()Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 2958
    :try_start_2
    new-instance v8, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v8}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2959
    .local v8, "firstNumberProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v14, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v14}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2960
    .local v14, "secondNumberProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2961
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {v9 .. v14}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2962
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_2
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 2963
    .end local v8    # "firstNumberProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v14    # "secondNumberProto":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_2
    move-exception v3

    .line 2971
    .end local v16    # "e2":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    :cond_0
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method public isPossibleNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2204
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    .line 2297
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2299
    :goto_0
    return v1

    .line 2298
    :catch_0
    move-exception v0

    .line 2299
    .local v0, "e":Lcn/nubia/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPossibleNumberWithReason(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 10
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2247
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2248
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2253
    .local v0, "countryCode":I
    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2254
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2273
    :goto_0
    return-object v7

    .line 2256
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v6

    .line 2257
    .local v6, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2258
    .local v2, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2260
    .local v1, "generalNumDesc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2261
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v9, "Checking if number is possible with incomplete metadata."

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2262
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2263
    .local v4, "numberLength":I
    const/4 v7, 0x3

    if-ge v4, v7, :cond_1

    .line 2264
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2265
    :cond_1
    const/16 v7, 0x10

    if-le v4, v7, :cond_2

    .line 2266
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2268
    :cond_2
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2271
    .end local v4    # "numberLength":I
    :cond_3
    iget-object v7, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 2272
    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 2273
    .local v5, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v5, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v7

    goto :goto_0
.end method

.method public isValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1997
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 1998
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidNumberForRegion(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 9
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2014
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2015
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2016
    .local v2, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    const-string v7, "001"

    .line 2017
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2018
    invoke-direct {p0, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_2

    :cond_0
    move v5, v6

    .line 2033
    :cond_1
    :goto_0
    return v5

    .line 2023
    :cond_2
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2024
    .local v1, "generalNumDesc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2029
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2030
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2031
    .local v4, "numberLength":I
    const/4 v7, 0x3

    if-le v4, v7, :cond_3

    const/16 v7, 0x10

    if-le v4, v7, :cond_1

    :cond_3
    move v5, v6

    goto :goto_0

    .line 2033
    .end local v4    # "numberLength":I
    :cond_4
    invoke-direct {p0, v3, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v7

    sget-object v8, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v7, v8, :cond_1

    move v5, v6

    goto :goto_0
.end method

.method maybeExtractCountryCode(Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 15
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultRegionMetadata"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2397
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 2398
    const/4 v9, 0x0

    .line 2463
    :goto_0
    return v9

    .line 2400
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2402
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string v7, "NonMatch"

    .line 2403
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2404
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 2408
    :cond_1
    invoke-virtual {p0, v4, v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    .line 2409
    .local v1, "countryCodeSource":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_2

    .line 2410
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2412
    :cond_2
    sget-object v12, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v12, :cond_5

    .line 2413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_3

    .line 2414
    new-instance v12, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v13, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v14, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v12, v13, v14}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2418
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v9

    .line 2419
    .local v9, "potentialCountryCode":I
    if-eqz v9, :cond_4

    .line 2420
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2426
    :cond_4
    new-instance v12, Lcn/nubia/i18n/phonenumbers/NumberParseException;

    sget-object v13, Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v14, "Country calling code supplied was not recognised."

    invoke-direct {v12, v13, v14}, Lcn/nubia/i18n/phonenumbers/NumberParseException;-><init>(Lcn/nubia/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2428
    .end local v9    # "potentialCountryCode":I
    :cond_5
    if-eqz p2, :cond_9

    .line 2432
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    .line 2433
    .local v2, "defaultCountryCode":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2434
    .local v3, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2435
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2436
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2437
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2438
    .local v10, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 2439
    .local v5, "generalDesc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v12, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 2440
    invoke-virtual {v5}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 2441
    .local v11, "validNumberPattern":Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2443
    iget-object v12, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 2444
    invoke-virtual {v5}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 2448
    .local v8, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_6

    .line 2449
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_7

    .line 2450
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v12

    sget-object v13, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v12, v13, :cond_9

    .line 2452
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2453
    if-eqz p4, :cond_8

    .line 2454
    sget-object v12, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2456
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move v9, v2

    .line 2457
    goto/16 :goto_0

    .line 2462
    .end local v2    # "defaultCountryCode":I
    .end local v3    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v5    # "generalDesc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "possibleNumberPattern":Ljava/util/regex/Pattern;
    .end local v10    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v11    # "validNumberPattern":Ljava/util/regex/Pattern;
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2463
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2594
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2597
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2599
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 2600
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2603
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2604
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2609
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_1
    return-object v0

    .line 2599
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2609
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .locals 4
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    .prologue
    .line 2505
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2506
    sget-object v2, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 2519
    :goto_0
    return-object v2

    .line 2509
    :cond_0
    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2510
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2511
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2513
    invoke-static {p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2514
    sget-object v2, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    .line 2517
    :cond_1
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    invoke-virtual {v2, p2}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2518
    .local v0, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2519
    invoke-direct {p0, v0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    :cond_2
    sget-object v2, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0
.end method

.method maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "carrierCode"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2536
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2537
    .local v3, "numberLength":I
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    .line 2538
    .local v4, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 2582
    :cond_0
    :goto_0
    return v8

    .line 2543
    :cond_1
    iget-object v10, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    invoke-virtual {v10, v4}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 2544
    .local v5, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2545
    iget-object v10, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 2546
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2548
    .local v1, "nationalNumberRule":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 2552
    .local v0, "isViableOriginalNumber":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 2553
    .local v2, "numOfGroups":I
    invoke-virtual {p2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v6

    .line 2554
    .local v6, "transformRule":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 2555
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 2557
    :cond_2
    if-eqz v0, :cond_3

    .line 2558
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2561
    :cond_3
    if-eqz p3, :cond_4

    if-lez v2, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 2562
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v8, v9

    .line 2565
    goto :goto_0

    .line 2569
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2570
    .local v7, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v3, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    if-eqz v0, :cond_6

    .line 2572
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2575
    :cond_6
    if-eqz p3, :cond_7

    if-le v2, v9, :cond_7

    .line 2576
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v8, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v9

    .line 2579
    goto/16 :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2649
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2650
    .local v0, "phoneNumber":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2651
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2660
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2661
    return-void
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2680
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2681
    .local v0, "phoneNumber":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2682
    return-object v0
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2692
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2693
    return-void
.end method

.method public truncateTooLongNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 6
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x1

    .line 2311
    invoke-virtual {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2326
    :goto_0
    return v3

    .line 2314
    :cond_0
    new-instance v2, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2315
    .local v2, "numberCopy":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2316
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    .line 2318
    .local v0, "nationalNumber":J
    :cond_1
    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    .line 2319
    invoke-virtual {v2, v0, v1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2320
    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 2322
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2324
    :cond_3
    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2325
    invoke-virtual {p1, v0, v1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0
.end method
