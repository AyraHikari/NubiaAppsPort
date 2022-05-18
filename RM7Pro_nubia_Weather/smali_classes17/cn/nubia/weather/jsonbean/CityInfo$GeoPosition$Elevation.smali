.class public Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation;
.super Ljava/lang/Object;
.source "CityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Elevation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Imperial;,
        Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Metric;
    }
.end annotation


# instance fields
.field private Imperial:Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Metric;

.field private Metric:Lcn/nubia/weather/jsonbean/CityInfo$GeoPosition$Elevation$Metric;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method
