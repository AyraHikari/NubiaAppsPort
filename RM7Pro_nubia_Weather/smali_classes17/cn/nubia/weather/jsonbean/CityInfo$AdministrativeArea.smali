.class public Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdministrativeArea"
.end annotation


# instance fields
.field private CountryID:Ljava/lang/String;

.field private EnglishName:Ljava/lang/String;

.field private EnglishType:Ljava/lang/String;

.field private ID:Ljava/lang/String;

.field private Level:Ljava/lang/String;

.field private LocalizedName:Ljava/lang/String;

.field private LocalizedType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountryID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->CountryID:Ljava/lang/String;

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->EnglishName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnglishType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->EnglishType:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->Level:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->LocalizedName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->LocalizedType:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryID(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryID"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->CountryID:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->EnglishName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setEnglishType(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishType"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->EnglishType:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "iD"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->ID:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->Level:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setLocalizedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localizedName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->LocalizedName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setLocalizedType(Ljava/lang/String;)V
    .locals 0
    .param p1, "localizedType"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->LocalizedType:Ljava/lang/String;

    .line 130
    return-void
.end method
