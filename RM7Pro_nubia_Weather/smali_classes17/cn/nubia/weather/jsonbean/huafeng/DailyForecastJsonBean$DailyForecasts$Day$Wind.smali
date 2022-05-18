.class public Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind;
.super Ljava/lang/Object;
.source "DailyForecastJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wind"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind$Direction;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind$Speed;
    }
.end annotation


# instance fields
.field public Direction:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind$Direction;

.field public Speed:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Day$Wind$Speed;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method
