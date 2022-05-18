.class public Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Imperial;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Imperial"
.end annotation


# instance fields
.field private Unit:Ljava/lang/String;

.field private UnitType:Ljava/lang/String;

.field private Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Imperial;->Unit:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Imperial;->UnitType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Imperial;->Value:Ljava/lang/String;

    return-object v0
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Imperial;->Unit:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setUnitType(Ljava/lang/String;)V
    .locals 0
    .param p1, "unitType"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Imperial;->UnitType:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Imperial;->Value:Ljava/lang/String;

    .line 255
    return-void
.end method
