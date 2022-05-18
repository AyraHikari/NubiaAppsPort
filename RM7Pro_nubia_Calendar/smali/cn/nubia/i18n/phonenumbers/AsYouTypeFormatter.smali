.class public Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMPTY_METADATA:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private digitPattern:Ljava/util/regex/Pattern;

.field private digitPlaceholder:Ljava/lang/String;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private inputHasFormatting:Z

.field private isExpectingCountryCallingCode:Z

.field private isInternationalFormatting:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private nationalPrefixExtracted:Ljava/lang/String;

.field private originalPosition:I

.field private final phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    const-string v1, "NA"

    .line 59
    invoke-virtual {v0, v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 65
    const-string v0, "\\[([^\\[\\]])*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "\\d(?=[^,}][^,}])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    .line 79
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 52
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 53
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 54
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 55
    invoke-static {}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .line 89
    const-string v0, "\u2008"

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->digitPlaceholder:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->digitPlaceholder:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->digitPattern:Ljava/util/regex/Pattern;

    .line 91
    iput v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 94
    iput v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 97
    iput v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 109
    new-instance v0, Lcn/nubia/i18n/phonenumbers/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcn/nubia/i18n/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 118
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 120
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 121
    return-void
.end method

.method private ableToExtractLongerNdd()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 378
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 383
    .local v0, "indexOfPreviousNdd":I
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 385
    .end local v0    # "indexOfPreviousNdd":I
    :cond_0
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 429
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 430
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 369
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 515
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v4

    .line 518
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v3, "numberWithoutCountryCallingCode":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v6, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 520
    .local v0, "countryCode":I
    if-eqz v0, :cond_0

    .line 523
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 524
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "newRegionCode":Ljava/lang/String;
    const-string v4, "001"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 527
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 531
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "countryCodeString":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const/4 v4, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "countryCodeString":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 529
    invoke-direct {p0, v2}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_1
.end method

.method private attemptToExtractIdd()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 487
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\+|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 489
    invoke-virtual {v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 488
    invoke-virtual {v5, v6}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 490
    .local v1, "internationalPrefix":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 491
    .local v0, "iddMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 492
    iput-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 493
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 494
    .local v2, "startOfCountryCallingCode":I
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 495
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 497
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v6, v4, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 497
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_0

    .line 500
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .end local v2    # "startOfCountryCallingCode":I
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private createFormattingTemplate(Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z
    .locals 5
    .param p1, "format"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "numberPattern":Ljava/lang/String;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v2

    .line 207
    :cond_1
    sget-object v3, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\\\d"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    sget-object v3, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\\\d"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 212
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "tempTemplate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 214
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .locals 4
    .param p1, "leadingThreeDigits"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 164
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 165
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "formatList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 168
    .local v0, "format":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isFormatEligible(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    .end local v0    # "format":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v1    # "formatList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :cond_1
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 166
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 172
    .restart local v1    # "formatList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "numberPattern"    # Ljava/lang/String;
    .param p2, "numberFormat"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v1, "999999999999999"

    .line 226
    .local v1, "longestPhoneNumber":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    invoke-virtual {v4, p1}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 227
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 228
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "aPhoneNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 232
    const-string v3, ""

    .line 238
    :goto_0
    return-object v3

    .line 235
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "template":Ljava/lang/String;
    const-string v4, "9"

    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->digitPlaceholder:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    goto :goto_0
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "countryCallingCode":I
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "mainCountry":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 129
    .local v2, "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    .line 134
    .end local v2    # "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :goto_0
    return-object v2

    .restart local v2    # "metadata":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_0
    sget-object v2, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 440
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 441
    .local v1, "lengthOfNationalNumber":I
    if-lez v1, :cond_2

    .line 442
    const-string v2, ""

    .line 443
    .local v2, "tempNationalNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 444
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v2

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .end local v0    # "i":I
    .end local v2    # "tempNationalNumber":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 446
    .restart local v0    # "i":I
    .restart local v2    # "tempNationalNumber":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 450
    .end local v0    # "i":I
    .end local v2    # "tempNationalNumber":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .locals 5
    .param p1, "nextChar"    # C

    .prologue
    const/4 v4, 0x0

    .line 559
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->digitPattern:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 560
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    iget v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "tempTemplate":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 564
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 572
    .end local v1    # "tempTemplate":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 566
    :cond_0
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 569
    iput-boolean v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 571
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 572
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .locals 5
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    if-eqz p2, :cond_0

    .line 295
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 299
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    iput-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 301
    iput-boolean v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 305
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v2, :cond_6

    .line 309
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz v2, :cond_3

    .line 310
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_1
    :goto_1
    return-object v0

    .line 303
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    goto :goto_0

    .line 311
    :cond_3
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 313
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 315
    :cond_4
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 321
    :cond_5
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 326
    :cond_6
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 339
    :goto_2
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz v2, :cond_9

    .line 340
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 341
    iput-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 343
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 330
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 332
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 333
    iput-boolean v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    goto :goto_2

    .line 335
    :cond_8
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 345
    :cond_9
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 346
    invoke-direct {p0, p1}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "tempNationalNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 355
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 357
    :cond_a
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 361
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "tempNationalNumber":Ljava/lang/String;
    :cond_c
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    const/4 v0, 0x1

    .line 389
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 391
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFormatEligible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-object v0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private maybeCreateNewTemplate()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 144
    .local v1, "numberFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "pattern":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    .end local v1    # "numberFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "pattern":Ljava/lang/String;
    :goto_1
    return v3

    .line 148
    .restart local v1    # "numberFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->createFormattingTemplate(Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    iput-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 152
    iput v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 153
    const/4 v3, 0x1

    goto :goto_1

    .line 155
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 158
    .end local v1    # "numberFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_2
    iput-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    goto :goto_1
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .locals 7
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x3

    .line 181
    .local v1, "indexOfLeadingDigitsPattern":I
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 182
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 184
    .local v0, "format":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 185
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    .line 187
    invoke-virtual {v0, v1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {v5, v6}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 188
    .local v3, "leadingDigitsPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 189
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 195
    .end local v0    # "format":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "leadingDigitsPattern":Ljava/util/regex/Pattern;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_1
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .locals 3
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .prologue
    .line 543
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_1

    .line 544
    move v0, p1

    .line 545
    .local v0, "normalizedChar":C
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    :goto_0
    if-eqz p2, :cond_0

    .line 553
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 555
    :cond_0
    return v0

    .line 547
    .end local v0    # "normalizedChar":C
    :cond_1
    const/16 v1, 0xa

    .line 548
    .local v1, "radix":I
    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 549
    .restart local v0    # "normalizedChar":C
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 456
    const/4 v3, 0x0

    .line 457
    .local v3, "startOfNationalNumber":I
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1

    .line 458
    const/4 v3, 0x1

    .line 459
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const-string v5, "1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iput-boolean v7, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 474
    :cond_0
    :goto_0
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "nationalPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 476
    return-object v1

    .line 461
    .end local v1    # "nationalPrefix":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 463
    invoke-virtual {v5}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 464
    .local v2, "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 465
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    iput-boolean v7, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 470
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 471
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .locals 6

    .prologue
    .line 395
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 396
    .local v2, "numFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcn/nubia/i18n/phonenumbers/RegexCache;

    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 397
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "formattedNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "numFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 247
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 248
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    iput v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 255
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 256
    iput v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 257
    iput v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 258
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 259
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 260
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 261
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 264
    :cond_0
    return-void
.end method

.method public getRememberedPosition()I
    .locals 4

    .prologue
    .line 410
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v2, :cond_1

    .line 411
    iget v1, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 421
    :cond_0
    return v1

    .line 413
    :cond_1
    const/4 v0, 0x0

    .local v0, "accruedInputIndex":I
    const/4 v1, 0x0

    .line 414
    .local v1, "currentOutputIndex":I
    :goto_0
    iget v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 415
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 416
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 417
    add-int/lit8 v0, v0, 0x1

    .line 419
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public inputDigit(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method
