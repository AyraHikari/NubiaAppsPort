.class public Lcn/nubia/weather/jsonbean/CityInfo$Country;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Country"
.end annotation


# instance fields
.field private EnglishName:Ljava/lang/String;

.field private ID:Ljava/lang/String;

.field private LocalizedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$Country;->EnglishName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$Country;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$Country;->LocalizedName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$Country;->EnglishName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "iD"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$Country;->ID:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLocalizedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localizedName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$Country;->LocalizedName:Ljava/lang/String;

    .line 69
    return-void
.end method
