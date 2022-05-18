.class public Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParentCity"
.end annotation


# instance fields
.field private EnglishName:Ljava/lang/String;

.field private Key:Ljava/lang/String;

.field private LocalizedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->EnglishName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->Key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->LocalizedName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->EnglishName:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->Key:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setLocalizedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localizedName"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->LocalizedName:Ljava/lang/String;

    .line 325
    return-void
.end method
