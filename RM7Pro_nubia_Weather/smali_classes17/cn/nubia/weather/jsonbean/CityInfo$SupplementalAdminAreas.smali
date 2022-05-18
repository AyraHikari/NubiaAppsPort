.class public Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupplementalAdminAreas"
.end annotation


# instance fields
.field private EnglishName:Ljava/lang/String;

.field private Level:Ljava/lang/String;

.field private LocalizedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->EnglishName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->Level:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->LocalizedName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->EnglishName:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->Level:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setLocalizedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localizedName"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->LocalizedName:Ljava/lang/String;

    .line 358
    return-void
.end method
