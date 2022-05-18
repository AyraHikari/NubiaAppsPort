.class public Lcn/nubia/weather/jsonbean/CityInfo$Region;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# instance fields
.field private EnglishName:Ljava/lang/String;

.field private ID:Ljava/lang/String;

.field private LocalizedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$Region;->EnglishName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$Region;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$Region;->LocalizedName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$Region;->EnglishName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "iD"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$Region;->ID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setLocalizedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localizedName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$Region;->LocalizedName:Ljava/lang/String;

    .line 38
    return-void
.end method
