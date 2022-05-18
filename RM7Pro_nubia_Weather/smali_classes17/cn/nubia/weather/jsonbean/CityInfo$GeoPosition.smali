.class public Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoPosition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;
    }
.end annotation


# instance fields
.field private Elevation:Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;

.field private Latitude:Ljava/lang/String;

.field private Longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method


# virtual methods
.method public getElevation()Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;->Elevation:Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;->Latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;->Longitude:Ljava/lang/String;

    return-object v0
.end method

.method public setElevation(Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;)V
    .locals 0
    .param p1, "elevation"    # Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;

    .prologue
    .line 297
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;->Elevation:Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;

    .line 298
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;->Latitude:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;->Longitude:Ljava/lang/String;

    .line 290
    return-void
.end method
