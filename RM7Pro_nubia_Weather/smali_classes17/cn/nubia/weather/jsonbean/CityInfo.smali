.class public Lcn/nubia/weather/jsonbean/CityInfo;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "CityInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;,
        Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;,
        Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;,
        Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;,
        Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;,
        Lcn/nubia/weather/jsonbean/CityInfo$Country;,
        Lcn/nubia/weather/jsonbean/CityInfo$Region;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private AdministrativeArea:Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

.field private Country:Lcn/nubia/weather/jsonbean/CityInfo$Country;

.field private DataSets:[Ljava/lang/String;

.field private EnglishName:Ljava/lang/String;

.field private GeoPosition:Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;

.field private IsAlias:Ljava/lang/String;

.field private Key:Ljava/lang/String;

.field private LocalizedName:Ljava/lang/String;

.field private ParentCity:Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

.field private PrimaryPostalCode:Ljava/lang/String;

.field private Rank:Ljava/lang/String;

.field private Region:Lcn/nubia/weather/jsonbean/CityInfo$Region;

.field private SupplementalAdminAreas:[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

.field private TimeZone:Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

.field private Type:Ljava/lang/String;

.field private Version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 339
    return-void
.end method


# virtual methods
.method public getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->AdministrativeArea:Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    return-object v0
.end method

.method public getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Country:Lcn/nubia/weather/jsonbean/CityInfo$Country;

    return-object v0
.end method

.method public getDataSets()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->DataSets:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->EnglishName:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoPosition()Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->GeoPosition:Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;

    return-object v0
.end method

.method public getIsAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->IsAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->LocalizedName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->ParentCity:Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    return-object v0
.end method

.method public getPrimaryPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->PrimaryPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Rank:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Lcn/nubia/weather/jsonbean/CityInfo$Region;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Region:Lcn/nubia/weather/jsonbean/CityInfo$Region;

    return-object v0
.end method

.method public getSupplementalAdminAreas()[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->SupplementalAdminAreas:[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

    return-object v0
.end method

.method public getTimeZone()Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->TimeZone:Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public setAdministrativeArea(Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;)V
    .locals 0
    .param p1, "administrativeArea"    # Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    .prologue
    .line 449
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->AdministrativeArea:Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    .line 450
    return-void
.end method

.method public setCountry(Lcn/nubia/weather/jsonbean/CityInfo$Country;)V
    .locals 0
    .param p1, "country"    # Lcn/nubia/weather/jsonbean/CityInfo$Country;

    .prologue
    .line 441
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Country:Lcn/nubia/weather/jsonbean/CityInfo$Country;

    .line 442
    return-void
.end method

.method public setDataSets([Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSets"    # [Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->DataSets:[Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->EnglishName:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setGeoPosition(Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;)V
    .locals 0
    .param p1, "geoPosition"    # Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;

    .prologue
    .line 465
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->GeoPosition:Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;

    .line 466
    return-void
.end method

.method public setIsAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "isAlias"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->IsAlias:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Key:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setLocalizedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localizedName"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->LocalizedName:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setParentCity(Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;)V
    .locals 0
    .param p1, "parentCity"    # Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    .prologue
    .line 481
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->ParentCity:Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    .line 482
    return-void
.end method

.method public setPrimaryPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryPostalCode"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->PrimaryPostalCode:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0
    .param p1, "rank"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Rank:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setRegion(Lcn/nubia/weather/jsonbean/CityInfo$Region;)V
    .locals 0
    .param p1, "region"    # Lcn/nubia/weather/jsonbean/CityInfo$Region;

    .prologue
    .line 433
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Region:Lcn/nubia/weather/jsonbean/CityInfo$Region;

    .line 434
    return-void
.end method

.method public setSupplementalAdminAreas([Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;)V
    .locals 0
    .param p1, "supplementalAdminAreas"    # [Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

    .prologue
    .line 489
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->SupplementalAdminAreas:[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

    .line 490
    return-void
.end method

.method public setTimeZone(Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    .prologue
    .line 457
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->TimeZone:Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    .line 458
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Type:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo;->Version:Ljava/lang/String;

    .line 378
    return-void
.end method
