.class public Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCode_:I

.field private emergency_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private fixedLine_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private generalDesc_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobile_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private personalNumber_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private tollFree_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private uan_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voicemail_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voip_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 325
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 339
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 353
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 367
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 381
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 395
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 409
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 423
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 437
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 451
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 465
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 479
    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 493
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 504
    iput v1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 515
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 526
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 537
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 548
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 559
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 570
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 581
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 632
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 646
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 657
    iput-boolean v1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 293
    return-void
.end method

.method public static newBuilder()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    return-object p0
.end method

.method public addNumberFormat(Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 600
    if-nez p1, :cond_0

    .line 601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 603
    :cond_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    return-object p0
.end method

.method public clearIntlNumberFormat()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    return-object p0
.end method

.method public getCountryCode()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public getEmergency()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getFixedLine()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 615
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public getMobile()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getPager()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSharedCost()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoicemail()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public hasEmergency()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public hasMobile()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public hasPager()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public hasUan()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public hasVoicemail()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    return v0
.end method

.method public hasVoip()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public isSameMobileAndFixedLinePattern()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public numberFormatSize()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 775
    .local v1, "hasDesc":Z
    if-eqz v1, :cond_0

    .line 776
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 777
    .local v0, "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 778
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 780
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 781
    if-eqz v1, :cond_1

    .line 782
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 783
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 784
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 786
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 787
    if-eqz v1, :cond_2

    .line 788
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 789
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 790
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 792
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 793
    if-eqz v1, :cond_3

    .line 794
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 795
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 796
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 798
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 799
    if-eqz v1, :cond_4

    .line 800
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 801
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 802
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 804
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 805
    if-eqz v1, :cond_5

    .line 806
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 807
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 808
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 810
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 811
    if-eqz v1, :cond_6

    .line 812
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 813
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 814
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 816
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 817
    if-eqz v1, :cond_7

    .line 818
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 819
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 820
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 822
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 823
    if-eqz v1, :cond_8

    .line 824
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 825
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 826
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 828
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 829
    if-eqz v1, :cond_9

    .line 830
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 831
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 832
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 834
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 835
    if-eqz v1, :cond_a

    .line 836
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 837
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 838
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoicemail(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 840
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 841
    if-eqz v1, :cond_b

    .line 842
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 843
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 844
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setEmergency(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 846
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 847
    if-eqz v1, :cond_c

    .line 848
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 849
    .restart local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 850
    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 853
    .end local v0    # "desc":Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 854
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 855
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 857
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 858
    .local v2, "hasString":Z
    if-eqz v2, :cond_d

    .line 859
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 862
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 863
    if-eqz v2, :cond_e

    .line 864
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 867
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 868
    if-eqz v2, :cond_f

    .line 869
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 872
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 873
    if-eqz v2, :cond_10

    .line 874
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 877
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 878
    if-eqz v2, :cond_11

    .line 879
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 882
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 884
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    .line 885
    .local v5, "nationalFormatSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_12

    .line 886
    new-instance v6, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 887
    .local v6, "numFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 888
    iget-object v7, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 891
    .end local v6    # "numFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    .line 892
    .local v4, "intlNumberFormatSize":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_13

    .line 893
    new-instance v6, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 894
    .restart local v6    # "numFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 895
    iget-object v7, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 898
    .end local v6    # "numFormat":Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 900
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 901
    if-eqz v2, :cond_14

    .line 902
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 905
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 906
    return-void
.end method

.method public setCountryCode(I)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 509
    iput p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 510
    return-object p0
.end method

.method public setEmergency(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 472
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    .line 473
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 474
    return-object p0
.end method

.method public setFixedLine(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 333
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 334
    return-object p0
.end method

.method public setGeneralDesc(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 319
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 320
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 498
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 499
    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 520
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 521
    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 651
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 652
    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 662
    iput-boolean p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 663
    return-object p0
.end method

.method public setMainCountryForCode(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 640
    iput-boolean p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 641
    return-object p0
.end method

.method public setMobile(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 346
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 347
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 348
    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 542
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 564
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 565
    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 575
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 576
    return-object p0
.end method

.method public setNoInternationalDialling(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 486
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 487
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 488
    return-object p0
.end method

.method public setPager(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 430
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 431
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 432
    return-object p0
.end method

.method public setPersonalNumber(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 402
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 403
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 404
    return-object p0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 553
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 554
    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 531
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public setPremiumRate(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 375
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 376
    return-object p0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 586
    iput-boolean p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 587
    return-object p0
.end method

.method public setSharedCost(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 388
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 389
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 390
    return-object p0
.end method

.method public setTollFree(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 360
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 361
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 362
    return-object p0
.end method

.method public setUan(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 444
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 445
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 446
    return-object p0
.end method

.method public setVoicemail(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 458
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    .line 459
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 460
    return-object p0
.end method

.method public setVoip(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 416
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 417
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 418
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 668
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v3, :cond_0

    .line 669
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 671
    :cond_0
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 672
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v3, :cond_1

    .line 673
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 675
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 676
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v3, :cond_2

    .line 677
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 679
    :cond_2
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 680
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v3, :cond_3

    .line 681
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 683
    :cond_3
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 684
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v3, :cond_4

    .line 685
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 687
    :cond_4
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 688
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v3, :cond_5

    .line 689
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 691
    :cond_5
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 692
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v3, :cond_6

    .line 693
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 695
    :cond_6
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 696
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v3, :cond_7

    .line 697
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 699
    :cond_7
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 700
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v3, :cond_8

    .line 701
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 703
    :cond_8
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 704
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v3, :cond_9

    .line 705
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 707
    :cond_9
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 708
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    if-eqz v3, :cond_a

    .line 709
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 711
    :cond_a
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 712
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    if-eqz v3, :cond_b

    .line 713
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 715
    :cond_b
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 716
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v3, :cond_c

    .line 717
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 720
    :cond_c
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 721
    iget v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 722
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 724
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 725
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v3, :cond_d

    .line 726
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 729
    :cond_d
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 730
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v3, :cond_e

    .line 731
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 734
    :cond_e
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 735
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v3, :cond_f

    .line 736
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 739
    :cond_f
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 740
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v3, :cond_10

    .line 741
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 744
    :cond_10
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 745
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v3, :cond_11

    .line 746
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 749
    :cond_11
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 751
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v2

    .line 752
    .local v2, "numberFormatSize":I
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_12

    .line 754
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_12
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    .line 758
    .local v1, "intlNumberFormatSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 759
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_13

    .line 760
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 763
    :cond_13
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 765
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 766
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v3, :cond_14

    .line 767
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 770
    :cond_14
    iget-boolean v3, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 771
    return-void
.end method
