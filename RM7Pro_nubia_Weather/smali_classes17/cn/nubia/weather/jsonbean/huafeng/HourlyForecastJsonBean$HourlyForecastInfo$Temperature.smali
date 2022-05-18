.class public Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;
.super Ljava/lang/Object;
.source "HourlyForecastJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Temperature"
.end annotation


# instance fields
.field public Unit:Ljava/lang/String;

.field public UnitType:Ljava/lang/String;

.field public Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
