.class public abstract enum Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Leniency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum EXACT_GROUPING:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum POSSIBLE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum STRICT_GROUPING:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum VALID:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;

    const-string v1, "POSSIBLE"

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 452
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 473
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    const-string v1, "STRICT_GROUPING"

    invoke-direct {v0, v1, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 528
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;

    const-string v1, "EXACT_GROUPING"

    invoke-direct {v0, v1, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 435
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$1;

    .prologue
    .line 435
    invoke-direct {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 435
    invoke-static {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsOnlyValidXChars(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "x1"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 435
    invoke-static {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->isNationalPrefixPresentIfRequired(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsMoreThanOneSlash(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "x1"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 435
    invoke-static {p0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->getNationalNumberGroups(Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static containsMoreThanOneSlash(Ljava/lang/String;)Z
    .locals 3
    .param p0, "candidate"    # Ljava/lang/String;

    .prologue
    .line 591
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 592
    .local v0, "firstSlashIndex":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static containsOnlyValidXChars(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 8
    .param p0, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    const/16 v7, 0x78

    const/16 v6, 0x58

    const/4 v3, 0x0

    .line 602
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_5

    .line 603
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 604
    .local v0, "charAtIndex":C
    if-eq v0, v7, :cond_0

    if-ne v0, v6, :cond_4

    .line 605
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 606
    .local v1, "charAtNextIndex":C
    if-eq v1, v7, :cond_1

    if-ne v1, v6, :cond_3

    .line 609
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 610
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p0, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v4

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v4, v5, :cond_4

    .line 621
    .end local v0    # "charAtIndex":C
    .end local v1    # "charAtNextIndex":C
    :cond_2
    :goto_1
    return v3

    .line 615
    .restart local v0    # "charAtIndex":C
    .restart local v1    # "charAtNextIndex":C
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    .end local v1    # "charAtNextIndex":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "charAtIndex":C
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static getNationalNumberGroups(Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .locals 5
    .param p0, "util"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 578
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->format(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "rfc3966Format":Ljava/lang/String;
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 582
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 583
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 586
    :cond_0
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 587
    .local v2, "startIndex":I
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isNationalPrefixPresentIfRequired(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 10
    .param p0, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "util"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    const/4 v7, 0x1

    .line 628
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v8

    sget-object v9, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v8, v9, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v7

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v8

    invoke-virtual {p1, v8}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 634
    .local v2, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    .line 638
    invoke-virtual {p1, p0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v8

    invoke-static {p1, v8, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->access$700(Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;Ljava/util/List;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 643
    .local v1, "formatRule":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 644
    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v8

    if-nez v8, :cond_0

    .line 650
    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "candidateNationalPrefixRule":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "$1"

    .line 653
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-static {v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 660
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 661
    .local v6, "rawInputCopy":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    .local v5, "rawInput":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1, v5, v2, v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result v7

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 435
    const-class v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method

.method public static values()[Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v0}, [Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method


# virtual methods
.method abstract verify(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z
.end method
