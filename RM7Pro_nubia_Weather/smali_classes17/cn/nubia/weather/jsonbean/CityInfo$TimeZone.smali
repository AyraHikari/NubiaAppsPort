.class public Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZone"
.end annotation


# instance fields
.field private Code:Ljava/lang/String;

.field private GmtOffset:Ljava/lang/String;

.field private IsDaylightSaving:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private NextOffsetChange:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->GmtOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDaylightSaving()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->IsDaylightSaving:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextOffsetChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->NextOffsetChange:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->Code:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setGmtOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "gmtOffset"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->GmtOffset:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setIsDaylightSaving(Ljava/lang/String;)V
    .locals 0
    .param p1, "isDaylightSaving"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->IsDaylightSaving:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->Name:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setNextOffsetChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextOffsetChange"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->NextOffsetChange:Ljava/lang/String;

    .line 197
    return-void
.end method
