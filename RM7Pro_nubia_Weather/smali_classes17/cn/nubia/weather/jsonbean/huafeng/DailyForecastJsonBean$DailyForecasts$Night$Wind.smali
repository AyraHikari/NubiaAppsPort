.class public Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind;
.super Ljava/lang/Object;
.source "DailyForecastJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wind"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind$Direction;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind$Speed;
    }
.end annotation


# instance fields
.field public Direction:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind$Direction;

.field public Speed:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Night$Wind$Speed;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method
